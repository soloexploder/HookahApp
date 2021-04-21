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
                name: "Крымский Вайб",
                tastes: ["дыня, арбуз, персик"],
                tobacco: "Duft"
            ),
            
            Product(
                name: "Камчатский панч",
                tastes: ["дыня, чай, черника"],
                tobacco: "Duft"
            ),
            
            Product(
                name: "Донской чилл",
                tastes: ["нуга, дыня, лимон"],
                tobacco: "Duft"
            ),
            
            Product(
                name: "Приморский шейк",
                tastes: ["черника, кокос, ананас"],
                tobacco: "Duft"
            )
        ]
    }
}

enum Mix: String {
        
    case melon = "дыня"
    case watermelon = "арбуз"
    case peach = "персик"
    case tea = "чай"
    case blueberry = "черника"
    case lemon = "лимон"
    case coconut = "кокос"
    case pineapple = "ананас"
    
    var mixer: String {
        switch self {
        case .melon:
            <#code#>
        case .watermelon:
            <#code#>
        case .peach:
            <#code#>
        case .tea:
            <#code#>
        case .blueberry:
            <#code#>
        case .lemon:
            <#code#>
        case .coconut:
            <#code#>
        case .pineapple:
            <#code#>
        }
    }
}
