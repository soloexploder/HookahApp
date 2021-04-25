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
<<<<<<< HEAD
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
=======
            Product(name: "Крымский Вайб", tastes: "Дыня, Арбуз, Персик", tobacco: "Duft"),
            Product(name: "Крымский Вайб", tastes: "Дыня, Арбуз, Персик", tobacco: "Duft"),
            Product(name: "Крымский Вайб", tastes: "Дыня, Арбуз, Персик", tobacco: "Duft")
>>>>>>> Tio
        ]
    }
}

enum Mix: String, CaseIterable {
        
    case melon = "Дыня"
    case watermelon = "Арбуз"
    case peach = "Персик"
    case tea = "Чай"
    case blueberry = "Черника"
    case lemon = "Лимон"
    case coconut = "Кокос"
    case pineapple = "Ананас"
    
    static func getTasteName() -> [Mix] {
        return Mix.allCases
    }
    
    var mixer: String {
        switch self {
        case .melon:
            return """
            Крымский вайб - дыня, арбуз, персик.

            Донской чилл - нуга, дыня, лимон.

            Камчатский панч - чай, черника, дыня.
            """
        case .watermelon:
            return "Крымский вайб - дыня, арбуз, персик."
        case .peach:
            return "Крымский вайб - дыня, арбуз, персик."
        case .tea:
            return "Камчатский панч - чай, черника, дыня."
        case .blueberry:
            return """
            Приморский шейк - черника, кокос, ананас.

            Камчатский панч - чай, черника, дыня.
            """
        case .lemon:
            return "Донской чилл - нуга, дыня, лимон."
        case .coconut:
            return "Приморский шейк - черника, кокос, ананас."
        case .pineapple:
            return "Приморский шейк - черника, кокос, ананас"
        }
    }
}


