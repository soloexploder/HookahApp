//
//  Product.swift
//  HookahApp
//
//  Created by Alex Tegai on 21.04.2021.
//


struct Product {
    
    let name: String
    let tastes: [String]
    let tobacco: String
    
    static func getProduct() -> [Product] {
        [
            Product(
                name: "Крымский Вайб", tastes: ["Дыня, Арбуз, Персик"], tobacco: "Duft")
        ]
    }
}
