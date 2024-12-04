//
//  PickerViewDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 16/03/24.
//

import SwiftUI

struct PickerViewDemo: View {
    var colors = ["Red", "Green", "Blue", "White", "Black", "Pink"]
    @State private var selectedColor = "Red"
    @State private var selectedFlavor: Flavor = .chocolate
    @State private var selectedTopping: Topping = .nuts
    @State private var birthDate = Date.now
    
    var body: some View {
        VStack {
            Picker("Please choose a Color", selection: $selectedColor) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            Text("You selected: \(selectedColor)")
        }.padding(25)
        
        // Segment style Pickerview
        Picker("Topping", selection: $selectedTopping) {
            Text("Nuts").tag(Topping.nuts)
            Text("Cookies").tag(Topping.cookies)
            Text("Blueberries").tag(Topping.blueberries)
        }.pickerStyle(.segmented)
        
        // List style PickerView
        List {
            Picker("Flavor", selection: $selectedFlavor) {
                Text("Chocolate").tag(Flavor.chocolate)
                Text("Vanilla").tag(Flavor.vanilla)
                Text("Strawberry").tag(Flavor.strawberry)
            }
        }
        
        // Date Picker
        VStack {
            DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date) {
                Text("Enter your BirthDate")
            }.padding()
            Text("BirthDate: \(birthDate.formatted(date: .long, time: .omitted))")
        }
    }
}

#Preview {
    PickerViewDemo()
}

enum Flavor: String, CaseIterable {
    case chocolate, vanilla, strawberry
    var id: Self { self }
}

enum Topping: String, CaseIterable {
    case nuts, cookies, blueberries
    var id: Self { self }
}
