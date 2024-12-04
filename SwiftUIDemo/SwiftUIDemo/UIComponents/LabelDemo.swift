//
//  LabelDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 16/03/24.
//

import SwiftUI

struct LabelDemo: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .foregroundStyle(.red)
            .tracking(5.0)
        
        Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.")
            .lineLimit(3)
            .frame(minWidth: 0, maxWidth: 350, minHeight: 0, maxHeight: 100)
            .background(.yellow)
            .cornerRadius(6.0)
            .padding(2)
            .fontDesign(.serif)
        
        Text(message)
            .padding(.bottom, 2)
        
        Label("Profile", systemImage: "folder.circle")
            .textCase(.uppercase)
            .padding()
        
        Text(name)
        
        Text("Hello World")
            .padding()
            .foregroundStyle(.green)
            .font(.largeTitle)
            .background(
                LinearGradient(gradient: Gradient(colors: [.white, .red, .blue]), startPoint: .top, endPoint: .bottom)
            )
        
        Text("Welcome to learn SWiftUI")
            .font(.title)
            .foregroundStyle(.black)
            .padding()
            .background(
                Image("nigara")
                    .resizable()
            )
    }
    
    var message: AttributedString {
        var result = AttributedString("Learn SwiftUI")
        result.font = .largeTitle
        result.link = URL(string: "https://www.hackingwithswift.com")
        return result
    }
    
    var name: AttributedString {
        var result = AttributedString("Vidhi Patel")
        result.font = .title
        result.foregroundColor = .white
        result.backgroundColor = .blue
        result.underlineStyle = Text.LineStyle(pattern: .solid, color: .red)
        return result
    }
}

#Preview {
    LabelDemo()
}
