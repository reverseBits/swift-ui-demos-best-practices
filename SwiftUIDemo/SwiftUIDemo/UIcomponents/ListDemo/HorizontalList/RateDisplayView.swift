//
//  RateDisplayView.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 20/06/24.
//

import SwiftUI

struct RateDisplayView: View {
    
    @Binding var navigationPath: NavigationPath
        
    var body: some View {
        TopView(title: "IN NSA to AE JEA", onBackTap: {
            if !navigationPath.isEmpty {
                navigationPath.removeLast()
            }
        })
        
        VStack(alignment: .leading) {
            Text("Upcoming Vessels")
                .font(.custom("Roboto-Regular", size: 16))
                .foregroundStyle(Color("blackColor"))
                .bold()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(1...8, id: \.self) {_ in
                        VesselCell()
                    }
                }
                .listRowInsets(.init())
            }
            .padding(.top, 10)
            
            HStack {
                Image("onion")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 36)
                
                Text("Freights For Onion ")
                    .font(.custom("Roboto-Regular", size: 16))
                    .foregroundStyle(Color("blackColor"))
                    .bold()
            }
            .padding(.top, 15)
            
            List(0..<10, id: \.self) {_ in
                FrightCell(navigationPath: $navigationPath)
                    .listRowInsets(.init(top: 5, leading: 5, bottom: 5, trailing: 5))
                    .listRowSeparator(.hidden)
                    .padding(.top, 10)
            }
            .listStyle(.plain)
            .scrollIndicators(.hidden)
            .refreshable {
                print("Pull to refresh")
            }
        }
        .padding(.horizontal, 15)
        .padding(.top, 15)
        .navigationBarBackButtonHidden(true)
    }
}

struct VesselCell: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 6) {
            Text("MONTEPELLIER")
                .font(.custom("Roboto-Regular", size: 12))
                .foregroundStyle(Color("blackColor"))
            
            Text("28 July  I  Tue")
                .font(.custom("Roboto-Regular", size: 12))
                .foregroundStyle(Color("citrusGreen"))
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .background(
            RoundedRectangle(cornerRadius: 6)
                .fill(Color(hex: "#018353", alpha: 0.1))
        )
        
    }
}

struct FrightCell: View {
    
    @Binding var navigationPath: NavigationPath
    
    var body: some View {
        VStack {
            HStack {
                Image("navio")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                
                Text("28 Jul")
                    .font(.custom("Roboto-Regular", size: 12))
                    .foregroundStyle(Color("blackColor"))
                    .padding(.leading, 15)
                
                VStack(alignment: .center, spacing: 0) {
                    Text("6 days")
                        .font(.custom("Roboto-Regular", size: 12))
                        .foregroundStyle(Color(.secondaryLabel))
                    
                    Image("arrow")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 15)
                        .padding(.leading, 7)
                    
                    Text("Direct")
                        .font(.custom("Roboto-Regular", size: 10))
                        .foregroundStyle(Color(.secondaryLabel))
                }
                
                Text("31 Jul")
                    .font(.custom("Roboto-Regular", size: 12))
                    .foregroundStyle(Color("blackColor"))
                
                Spacer()
                
                VStack(alignment: .center) {
                    Text("$2,435")
                        .font(.custom("Roboto-Regular", size: 16))
                        .foregroundStyle(Color("blackColor"))
                    
                    HStack {
                        Text("$2,535")
                            .font(.custom("Roboto-Regular", size: 13))
                            .strikethrough()
                            .foregroundStyle(Color(.systemGray))
                        
                        Text("$100 Off")
                            .font(.custom("Roboto-Regular", size: 13))
                            .foregroundStyle(Color(hex: "00A653"))
                    }
                }
            }
            .padding(.leading, 11)
            
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(Color(hex: "#ADADAD"))
                .padding(.top, 6)
            
            HStack(alignment: .center) {
                VStack(alignment: .center) {
                    Text("Inventory Status")
                        .font(.custom("Roboto-Regular", size: 8))
                        .foregroundStyle(Color(hex: "656263"))
                    
                    Text("Subject to availabilty ")
                        .font(.custom("Roboto-Regular", size: 10))
                        .foregroundStyle(Color(hex: "231F20"))
                }
                .padding(.leading, 14)
                
                Spacer()
                
                Button("Check Full Quote") {
                    navigationPath.append(CitrusScreens.homeScreen)
                }
                .padding(.horizontal, 18)
                .padding(.vertical, 8)
                .foregroundStyle(.white)
                .font(.custom("Roboto-Regular", size: 14))
                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .fill(Color(hex: "018353"))
                )
            }
            .padding(.top, 10)
        }
        .padding(.horizontal, 11)
        .padding(.vertical, 12)
        .background(
            RoundedRectangle(cornerRadius: 6)
                .fill(.white)
                .shadow(radius: 1)
        )
    }
}

#Preview {
    RateDisplayView(navigationPath: .constant(NavigationPath()))
}
