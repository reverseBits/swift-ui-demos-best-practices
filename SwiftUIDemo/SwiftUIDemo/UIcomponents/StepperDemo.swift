//
//  StepperDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 16/03/24.
//

import SwiftUI

struct StepperDemo: View {
    @State private var age = 22
    @State private var value = 0
    
    var body: some View {
        VStack {
            Stepper("Enter your age", value: $age, in: 0...130)
            Text("Your age is \(age)")
        }.padding()
        
        // Stepper with defined step
        Stepper(value: $value, in: 0...100, step: 5) {
            Text("Current: \(value)")
        }.padding()
    }
}

#Preview {
    StepperDemo()
}
