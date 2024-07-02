//
//  Products.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 02/07/24.
//

import Foundation

struct Products: Codable, Identifiable {
    let id: Int
    let title: String
    let price: Double
    let description, category: String
    let image: String
    let rating: Rating
}

// MARK: - Rating
struct Rating: Codable {
    let rate: Double
    let count: Int
}
