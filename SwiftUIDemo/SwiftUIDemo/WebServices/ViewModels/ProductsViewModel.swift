//
//  ProductsViewModel.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 03/07/24.
//

import Combine

class ProductsViewModel: ObservableObject {
    
    private var cancellables = Set<AnyCancellable>()
    @Published var products: [Products]?
    
    func getProducts(endPoint: EndPoint) {
        NetworkManager.shared.getData(endpoint: endPoint, type: Products.self)
            .sink { _ in
            } receiveValue: { products in
                self.products = products
                print("Products: \(products)")
            }
            .store(in: &cancellables)
    }
}
