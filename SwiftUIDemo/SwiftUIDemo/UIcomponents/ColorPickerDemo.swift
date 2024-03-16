//
//  ColorPickerDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 16/03/24.
//

import SwiftUI

struct ColorPickerDemo: View {
    @State private var bgColor = Color.red
    
    var body: some View {
        VStack {
            ColorPicker("Set the background color", selection: $bgColor, supportsOpacity: false)
                .padding()
                .background(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor)
    }
}

#Preview {
    ColorPickerDemo()
}
