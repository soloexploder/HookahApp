//
//  Product.swift
//  HookahApp
//
//  Created by Alex Tegai on 21.04.2021.
//


struct Product {
    
    let name: String
    let tastes: String
    let tobacco: String
 
}

extension Product {
    static func getProduct() -> [Product] {
        [
            Product(name: "Крымский Вайб", tastes: "Дыня, Арбуз, Персик", tobacco: "Duft"),
            Product(name: "Крымский Вайб", tastes: "Дыня, Арбуз, Персик", tobacco: "Duft"),
            Product(name: "Крымский Вайб", tastes: "Дыня, Арбуз, Персик", tobacco: "Duft")
        ]
    }
}
