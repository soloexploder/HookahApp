//
//  Product.swift
//  HookahApp
//
//  Created by Alex Tegai on 21.04.2021.
//

struct Product {

    let name: String
    let tobacco: String

    static func getProduct() -> [Product]{
            [
                Product(name: "Крымский Вайб", tobacco: "Duft"),
                Product(name: "Камчатский панч", tobacco: "Duft"),
                Product(name: "Донской чилл", tobacco: "Duft"),
                Product(name: "Приморский шейк", tobacco: "Duft")
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
    
    static func getTaste() -> [Mix] {
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


