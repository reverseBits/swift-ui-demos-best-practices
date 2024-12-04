//
//  ImageViewDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 16/03/24.
//

import SwiftUI

struct ImageViewDemo: View {
    var body: some View {
        Image(systemName: "moon.stars.fill")
            .font(.largeTitle)
            .foregroundStyle(.brown)
        
        Image("gift")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 250)
        
        Circle()
            .stroke(.red, lineWidth: 20)
            .fill(.orange)
            .frame(width: 150, height: 150)
            .padding(25)
        
        AsyncImage(url: URL(string: "https://hws.dev/paul.jpg"), scale: 10)
            .frame(width: 150, height: 150)
        
        Image(systemName: "theatermasks")
            .symbolRenderingMode(.hierarchical)
            .font(.system(size: 144))
    }
}

#Preview {
    ImageViewDemo()
}
