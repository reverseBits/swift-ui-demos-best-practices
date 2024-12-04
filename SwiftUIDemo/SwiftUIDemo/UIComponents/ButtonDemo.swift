//
//  ButtonDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 16/03/24.
//

import SwiftUI

struct ButtonDemo: View {
    @State private var showDetails = false
    
    var body: some View {
        Button("Tap Me!") {
            print("Button Tapped!")
        }
        .padding()
        .foregroundStyle(.black)
        .border(.red, width: 1)
        
        Button("Login") {
            print("Button Tapped!")
        }
        .padding()
        .frame(maxWidth: .infinity)
        .font(.headline)
        .foregroundStyle(.white)
        .background(Color(red: 1/255, green: 131/255, blue: 80/255))
        .cornerRadius(6)
        .padding(.top, 50)
        
        VStack(alignment: .leading) {
            Button("Show details") {
                showDetails.toggle()
            }
            
            if showDetails {
                Text("Button toggling!")
                    .font(.headline)
            }
        }
        .padding()
        
        NavigationStack {
            NavigationLink {
                Text("Detail view here")
            } label: {
                Image("gift")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 200, height: 200)
            }
        }
    }
}

#Preview {
    ButtonDemo()
}
