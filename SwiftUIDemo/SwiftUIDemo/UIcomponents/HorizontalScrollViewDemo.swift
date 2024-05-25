//
//  HorizontalScrollViewDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 16/03/24.
//

import SwiftUI

struct HorizontalScrollViewDemo: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(0..<10) {
                    Text("Card: \($0)")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .frame(width: 250, height: 300)
                        .background(.red)
                }
            }
        }
    }
}

#Preview {
    HorizontalScrollViewDemo()
}
