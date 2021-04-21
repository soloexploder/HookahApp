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

extension Product{
    static func getProduct() -> [Product] {
        [
            Product(name: "Крымский Вайб", tastes: "дыня, арбуз, персик", tobacco: "Duft"),
            Product(name: "Камчатский панч", tastes: "дыня, чай, черника", tobacco: "Duft"),
            
            Product(
                name: "Донской чилл",
                tastes: "нуга, дыня, лимон",
                tobacco: "Duft"
            ),
            
            Product(
                name: "Приморский шейк",
                tastes: "черника, кокос, ананас",
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
            return """
                    Донской чилл. Состав: нуга, дыня, лимон. Табак: "Duft".
                    Камчатский панч. Состав: дыня, чай, черника. Табак: "Duft".
                                    name: "Крымский Вайб",
                                    tastes: ["дыня, арбуз, персик"],
                                    tobacco: "Duft"
                    """
        case .watermelon:
            return "арбуз ммм"
        case .peach:
            return "персик ммм"
        case .tea:
            return "чай ммм"
        case .blueberry:
            return "черника ммм"
        case .lemon:
            return "лимон ммм"
        case .coconut:
            return "кокос ммм"
        case .pineapple:
            return "ананас ммм"
        }
    }
}
