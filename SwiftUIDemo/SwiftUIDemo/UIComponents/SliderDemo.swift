//
//  SliderDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 16/03/24.
//

import SwiftUI

struct SliderDemo: View {
    @State private var speed = 50.0
    @State private var isEditing: Bool = false
    
    var body: some View {
        Slider(value: $speed,in: 0...100, step: 5) {
            Text("Spped")
        } minimumValueLabel: {
            Text("0")
        } maximumValueLabel: {
            Text("100")
        } onEditingChanged: { editing in
            isEditing = editing
        }
        .padding()
        .tint(.green)
        
        Text("\(speed)")
            .foregroundStyle(isEditing ? .red : .blue)
    }
}

#Preview {
    SliderDemo()
}
