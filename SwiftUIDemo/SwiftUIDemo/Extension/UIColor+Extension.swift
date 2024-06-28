//
//  UIColor+Extension.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 20/06/24.
//

import SwiftUI

extension Color {
    init(hex: String, alpha: Double = 1.0) {
        var hexString = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        hexString = hexString.replacingOccurrences(of: "#", with: "")
        
        let scanner = Scanner(string: hexString)
        var rgbValue: UInt64 = 0
        
        if scanner.scanHexInt64(&rgbValue) {
            let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
            let g = Double((rgbValue & 0x00FF00) >> 8) / 255.0
            let b = Double(rgbValue & 0x0000FF) / 255.0
            
            self.init(red: r, green: g, blue: b, opacity: alpha)
        } else {
            self.init(red: 1.0, green: 1.0, blue: 1.0)
        }
    }
}
