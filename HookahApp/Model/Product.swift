//
//  Product.swift
//  HookahApp
//
//  Created by Alex Tegai on 21.04.2021.
//

struct Product {

    let name: String
    let tobacco: String
//    let tastes: [Taste]

    static func getProduct() -> [Product]{

            [
                Product(name: "Крымский Вайб",
                        tobacco: "Duft"
//                        tastes: [
//                            Taste(title: "дыня", type: .melon),
//                            Taste(title: "арбуз", type: .watermelon),
//                            Taste(title: "персик", type: .peach)
//            ]
                        ),

                Product(name: "Камчатский панч",
                        tobacco: "Duft"
//                        tastes: [
//                            Taste(title: "дыня", type: .melon),
//                            Taste(title: "чай", type: .watermelon),
//                            Taste(title: "черника", type: .peach)
//            ]
                        ),

                Product(name: "Донской чилл",
                        tobacco: "Duft"
//                        tastes: [
//                            Taste(title: "ананас", type: .melon),
//                            Taste(title: "дыня", type: .watermelon),
//                            Taste(title: "лимон", type: .peach)
//            ]
                        ),

                Product(name: "Приморский шейк",
                        tobacco: "Duft"
//                        tastes: [
//                            Taste(title: "черника", type: .melon),
//                            Taste(title: "кокос", type: .watermelon),
//                            Taste(title: "ананас", type: .peach)
//            ]
                        )
        ]
    }
}

struct Taste {
    let title: String
    let type: Mix
    
    static func getTaste() -> [Taste] {
        [
            Taste(title: "дыня", type: .melon),
            Taste(title: "арбуз", type: .watermelon),
            Taste(title: "персик", type: .peach),
            Taste(title: "чай", type: .watermelon),
            Taste(title: "черника", type: .peach),
            Taste(title: "лимон", type: .peach),
            Taste(title: "кокос", type: .watermelon),
            Taste(title: "ананас", type: .peach)
        ]
    }
}

enum Mix: String {
        
    case melon = """
                 Донской чилл. Состав: нуга, дыня, лимон. Табак: "Duft".
                 Камчатский панч. Состав: дыня, чай, черника. Табак: "Duft".
                 Крымский Вайб. Состав: дыня, арбуз, персик. Табак: "Duft"
                 """
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
            return "melon"
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


