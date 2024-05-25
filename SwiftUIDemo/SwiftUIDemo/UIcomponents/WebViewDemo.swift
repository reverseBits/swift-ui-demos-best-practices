//
//  WebViewDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 13/04/24.
//

import SwiftUI
import WebKit

struct WebViewDemo: View {
    var body: some View {
        Link(destination: /*@START_MENU_TOKEN@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/, label: {
            Text("Visit Apple").font(.title).foregroundStyle(.red)
        })
    }
}

#Preview {
    WebViewDemo()
}
