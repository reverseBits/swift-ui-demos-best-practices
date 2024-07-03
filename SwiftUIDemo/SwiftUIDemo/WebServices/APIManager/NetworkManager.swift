//
//  APIManager.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 02/07/24.
//

import Alamofire
import Combine

class NetworkManager {
    
    @Published var products: [Products] = []
    static let shared = NetworkManager()
    
    private init() {
        
    }
    
    private var cancellables = Set<AnyCancellable>()
    private let baseURL = "https://fakestoreapi.com/products/category/"
    
    // API call using Combine architecture
    func getData<T: Decodable>(endpoint: EndPoint, id: Int? = nil, type: T.Type) -> Future<[T], Error> {
        return Future<[T], Error> { [weak self] promise in
            guard let self = self, let url = URL(string: self.baseURL.appending(endpoint.rawValue).appending(id == nil ? "" : "/\(id ?? 0)")) else {
                return promise(.failure(NetworkError.invalidURL))
            }
            print("URL is \(url.absoluteString)")
            URLSession.shared.dataTaskPublisher(for: url)
                .tryMap { (data, response) -> Data in
                    guard let httpResponse = response as? HTTPURLResponse, 200...299 ~= httpResponse.statusCode else {
                        throw NetworkError.responseError
                    }
                    return data
                }
                .decode(type: [T].self, decoder: JSONDecoder())
                .receive(on: RunLoop.main)
                .sink(receiveCompletion: { (completion) in
                    if case let .failure(error) = completion {
                        switch error {
                            case let decodingError as DecodingError:
                                promise(.failure(decodingError))
                            case let apiError as NetworkError:
                                promise(.failure(apiError))
                            default:
                                promise(.failure(NetworkError.unknown))
                        }
                    }
                }, receiveValue: { promise(.success($0)) })
                .store(in: &self.cancellables)
        }
    }
    
    // API call using Alamofire
    func fetchPosts(endPoint: String) {
        let url = "https://fakestoreapi.com/products/category/\(endPoint)"
        
        AF.request(url,
                   method: .get)
        .validate()
        .responseDecodable(of: [Products].self) { response in
            switch response.result {
                case .success(let products):
                    DispatchQueue.main.async {
                        self.products = products
                    }
                    print("Products: \(products)")
                case .failure(let error):
                    print("Error fetching posts: \(error.localizedDescription)")
            }
        }
    }
}

enum EndPoint: String {
    case electronics = "electronics"
    case jewellery = "jewelery"
    case mensClothing = "men's clothing"
    case womensClothing = "women's clothing"
}

enum NetworkError: Error {
    case invalidURL
    case responseError
    case unknown
}

extension NetworkError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return NSLocalizedString("Invalid URL", comment: "Invalid URL")
        case .responseError:
            return NSLocalizedString("Unexpected status code", comment: "Invalid response")
        case .unknown:
            return NSLocalizedString("Unknown error", comment: "Unknown error")
        }
    }
}
