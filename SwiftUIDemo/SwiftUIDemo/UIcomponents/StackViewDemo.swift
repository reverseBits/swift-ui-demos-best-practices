//
//  StackViewDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 16/03/24.
//

import SwiftUI

struct StackViewDemo: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 10) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Divider()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        HStack(spacing: 10) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        
        ZStack {
            Image("nigara")
            Text("Naigara Falls")
                .font(.largeTitle)
                .background(.black)
                .foregroundStyle(.white)
        }
        
        ZStack {
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
                .zIndex(1)
            
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
        }
        
        HStack {
            Image(systemName: "clock.fill")
            Text("Set the timer")
        }
        .font(.title.bold())
        .foregroundStyle(
            .linearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    StackViewDemo()
}
