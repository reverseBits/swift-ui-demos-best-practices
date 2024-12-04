//
//  ToggleDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 16/03/24.
//

import SwiftUI

struct ToggleDemo: View {
    @State private var showGreeting: Bool = true
    @State private var isOn: Bool = false
    @State private var vibrateOnRing = true
    @State var lists = [
        EmailList(id: "Monthly Updates", isSubscribed: true),
        EmailList(id: "News Flashes", isSubscribed: true),
        EmailList(id: "Special Offers", isSubscribed: true)
    ]
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Toggle("Show welcome message", isOn: $showGreeting)
                .padding()
                .toggleStyle(SwitchToggleStyle(tint: .red))
            if(showGreeting) {
                Text("Hello World!")
            }
        }
        
        Toggle("Filter", isOn: $isOn)
            .toggleStyle(.button)
            .tint(.mint)
            .padding()
        
        Toggle("Vibrate on Ring", systemImage: "dot.radiowaves.left.and.right", isOn: $vibrateOnRing)
            .padding()
        
        Form {
            Section {
                ForEach($lists) { $list in
                    Toggle(list.id, isOn: $list.isSubscribed)
                }
            }
            
            Section {
                Toggle("Subscribe to all", sources: $lists, isOn: \.isSubscribed)
            }
        }
    }
}

#Preview {
    ToggleDemo()
}

struct EmailList: Identifiable {
    var id: String
    var isSubscribed = false
}
