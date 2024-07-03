//
//  WClothesView.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 02/07/24.
//

import SwiftUI

struct WClothesView: View {
    
    @ObservedObject private var viewModel = ProductsViewModel()
    
    var body: some View {
        ScrollView {
            Text("Women's Clothes")
                .font(.title)
                .bold()
            
            VStack {
                ForEach(viewModel.products ?? []) { product in
                    ZStack {
                        Rectangle()
                            .fill()
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .cornerRadius(8.0)
                            .shadow(radius: 1.0)
                        
                        VStack(spacing: 10) {
                            AsyncImage(url: URL(string: product.image)) { image in
                              image.resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 150)
                            } placeholder: {
                              ProgressView()
                            }

                            VStack {
                                Text(product.title)
                                    .font(.headline)
                                    .bold()
                                
                                Text(String(product.price))
                                    .font(.subheadline)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                    .padding(.horizontal, 15)
                    .padding(.top, 10)
                }
            }
            .onAppear {
                viewModel.getProducts(endPoint: .womensClothing)
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    WClothesView()
}
