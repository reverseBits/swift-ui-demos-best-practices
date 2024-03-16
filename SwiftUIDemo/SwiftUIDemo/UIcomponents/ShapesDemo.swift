//
//  ShapesDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 16/03/24.
//

import SwiftUI

struct ShapesDemo: View {
    var body: some View {
        Rectangle()
            .fill(.red)
            .frame(width: 200, height: 100)
        
        RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
            .fill(.blue)
            .frame(width: 150, height: 50)
        
        Capsule()
            .fill()
            .frame(width: 50, height: 100)
        
        Circle()
            .stroke(.red, lineWidth: 10)
            .fill(.green)
            .frame(width: 100, height: 100)
        
        Circle()
            .trim(from: 0, to: 0.5)
            .frame(width: 200, height: 200)
    }
}

#Preview {
    ShapesDemo()
}
