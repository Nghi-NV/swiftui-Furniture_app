//
//  Product.swift
//  Furniture_app
//
//  Created by NghiNV on 27/01/2022.
//

import Foundation

struct Product {
    var id: Int
    var name: String
    var image: String
    var star: Int
    var price: Int
}

extension Product {
    var data: [Product] {
        return [
            Product(id: 1, name: "Image", image: "chair_1", star: 4, price: 1299),
            Product(id: 1, name: "Image", image: "chair_2", star: 4, price: 2100),
            Product(id: 1, name: "Image", image: "chair_3", star: 4, price: 1900),
            Product(id: 1, name: "Image", image: "chair_4", star: 4, price: 800),
        ]
    }
}
