//
//  NavigationDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 10/06/24.
//

import SwiftUI

struct NavigationDemo: View {
    
    let countries = countryList
    
    var body: some View {
        NavigationView {
            List {
                ForEach(countries, id: \.self) { country in
                    NavigationLink(destination: Text(country)) {
                        Image(systemName: "airplane")
                        Text(country)
                    }
                }
                .navigationTitle("Destinations")
            }
        }
    }
}

#Preview {
    NavigationDemo()
}
