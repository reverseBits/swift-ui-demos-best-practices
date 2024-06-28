//
//  Quotation.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 19/06/24.
//

import Foundation

struct Quotation: Identifiable {
    var id = UUID()
    var name: String
    var charge: String
    
    static func quotationDetails() -> [Quotation] {
        return [Quotation(name: "Freight Charge", charge: "₹4,000"),
                Quotation(name: "Origin Charge", charge: "₹4,000"),
                Quotation(name: "Custom Clearance", charge: "₹4,000"),
                Quotation(name: "Transportation Charge", charge: "₹4,000"),
                Quotation(name: "Additional Service’s Cost", charge: "₹4,000")]
    }
}
