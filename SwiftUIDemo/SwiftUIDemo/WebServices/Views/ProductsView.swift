//
//  ProductsView.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 02/07/24.
//

import SwiftUI

struct ProductsView: View {
    
    @State private var navigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            Text("Categories")
                .font(.title)
                .bold()
            
            VStack(spacing: 20) {
                Button(action: {
                    navigationPath.append(ProductsScreens.electronics)
                }) {
                    Text("Electronics")
                        .font(.custom("Roboto-Regular", size: 15))
                        .foregroundStyle(Color("citrusGreen"))
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.white)
                        .shadow(radius: 1.0)
                )
                
                Button(action: {
                    navigationPath.append(ProductsScreens.mensClothes)
                }) {
                    Text("Men's Clothing")
                        .font(.custom("Roboto-Regular", size: 15))
                        .foregroundStyle(Color("citrusGreen"))
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.white)
                        .shadow(radius: 1.0)
                )
                
                Button(action: {
                    navigationPath.append(ProductsScreens.womensClothes)
                }) {
                    Text("Women's Clothing")
                        .font(.custom("Roboto-Regular", size: 15))
                        .foregroundStyle(Color("citrusGreen"))
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.white)
                        .shadow(radius: 1.0)
                )
                
                Button(action: {
                    navigationPath.append(ProductsScreens.jewellery)
                }) {
                    Text("Women's Jewellery")
                        .font(.custom("Roboto-Regular", size: 15))
                        .foregroundStyle(Color("citrusGreen"))
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.white)
                        .shadow(radius: 1.0)
                )
            }
            .padding(.horizontal, 15)
            .navigationDestination(for: ProductsScreens.self) { screen in
                switch screen {
                    case .electronics:
                        ElectronicsView()
                    case .mensClothes:
                        ClothesView()
                    case .womensClothes:
                        WClothesView()
                    case .jewellery:
                        JewelleryView()
                }
            }
        }
    }
}

#Preview {
    ProductsView()
}
