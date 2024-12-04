//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 16/03/24.
//

import SwiftUI

struct CitrusView: View {
    
    @State private var navigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            Login(navigationPath: $navigationPath)
                .navigationDestination(for: CitrusScreens.self) { screen in
                    switch screen {
                        case .login:
                            Login(navigationPath: $navigationPath)
                        case .rateDisplay:
                            RateDisplayView(navigationPath: $navigationPath)
                        case .homeScreen:
                            HomeScreen()
                    }
                }
        }
    }
}

#Preview {
    CitrusView()
}
