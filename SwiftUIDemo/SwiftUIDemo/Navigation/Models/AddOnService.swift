//
//  AddOnService.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 19/06/24.
//

import Foundation

struct AddOnService: Identifiable {
    var id = UUID()
    var image: String
    var serviceName: String
    var serviceDetails: String
    
    static func addOnServiceDetails() -> [AddOnService]{
        return [AddOnService(image: "kyc", serviceName: "Port KYC", serviceDetails: "Mandatory for First time exporters"),
                AddOnService(image: "insurance", serviceName: "Marine Insurance", serviceDetails: "Coverage for your cargo")]
    }
}
