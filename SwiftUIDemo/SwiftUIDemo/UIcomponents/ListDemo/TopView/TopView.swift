//
//  TopView.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 20/06/24.
//

import SwiftUI

struct TopView: View {
    
    var title: String
    
    var body: some View {
        ZStack {
            UnevenRoundedRectangle(cornerRadii: .init(topLeading: 0.0,
                                                      bottomLeading: 20.0,
                                                      bottomTrailing: 20.0,
                                                      topTrailing: 0.0))
            .frame(maxHeight: 70)
            .foregroundStyle(.white)
            .shadow(radius: 1, x: 0, y: 3)
            
            HStack {
                Image("back_iOS")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                
                Text(title)
                    .font(.custom("Roboto-Regular", size: 16))
                    .foregroundStyle(Color("blackColor"))
                    .bold()
                    .padding(.leading, 15)
                
                Spacer()
                
                Image("citrus")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 55)
            }
            .padding(.horizontal, 25)
        }
    }
}

#Preview {
    TopView(title: "IN NSA to AE JEA")
}
