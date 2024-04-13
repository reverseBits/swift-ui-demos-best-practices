//
//  DatePickerDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 13/04/24.
//

import SwiftUI

struct DatePickerDemo: View {
    @State private var birthDate = Date.now
    
    var body: some View {
        VStack {
            DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date) {
                Text("Select a date: ")
            }
            Text("BirthDate is \(birthDate.formatted(date: .long, time: .omitted))")
        }
        .padding()
    }
}

#Preview {
    DatePickerDemo()
}
