//
//  FruitModel.swift
//  Fruits
//
//  Created by Camelia Braghes on 14.03.2022.
//

import SwiftUI

// fruits data model
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColor: [Color]
    var description: String
    var nutrition: [String]
}
