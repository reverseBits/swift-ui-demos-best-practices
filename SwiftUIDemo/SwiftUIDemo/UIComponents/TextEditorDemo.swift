//
//  TextEditorDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 16/03/24.
//

import SwiftUI

// Just like TextView of UIKit
struct TextEditorDemo: View {
    @State private var fullText = "Marine insurance provides coverage for ships, cargo, and other marine-related risks. It protects against financial loss due to various issues encountered during transport by sea."
    
    var body: some View {
       TextEditor(text: $fullText)
            .foregroundColor(.green)
            .font(.custom("HelveticaNeue", size: 20))
            .lineSpacing(5)
    }
}

#Preview {
    TextEditorDemo()
}
