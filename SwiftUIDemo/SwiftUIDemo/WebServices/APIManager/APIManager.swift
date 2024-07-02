//
//  APIManager.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 02/07/24.
//

import Alamofire
import Foundation

class APIManager: ObservableObject {
    @Published var products: [Products] = []
    
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
