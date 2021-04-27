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
 
     static func getProduct() -> [Product] {
        [
            Product(name: "Крымский Вайб", tastes: "Дыня, Арбуз, Персик", tobacco: "Duft"),
            Product(name: "Крымский Вайб", tastes: "Дыня, Арбуз, Персик", tobacco: "Duft"),
            Product(name: "Крымский Вайб", tastes: "Дыня, Арбуз, Персик", tobacco: "Duft")
        ]
    }
}

struct Tobacco {
    let title: String
    let discription: String
    
   static func getTobacco() -> [Tobacco] {
        [
            Tobacco(title: "Darkside", discription: "Darkside – настоящий мастадонт кальянный индустрии. Отменное качество, отличный бленд табачного сырья, постоянно дорабатываемая вкусовая палитра – все это позволяет бренду выступать в качестве «законодателя мод» среди табачных производителей в России. "),
            Tobacco(title: "Musthave", discription: "Отличительной чертой табака для кальяна Must Have являются гипернатуральные, яркие, сочные фруктово-ягодные и десертные вкусы созданные в кооперации с ведущими специалистами Европы, Японии и Америки."),
            Tobacco(title: "Element", discription: "На восприятие табака во многом влияет его крепость, именно поэтому появилась концепция четырех стихий, самой лёгкой из которых стал воздух, а самой крепкой — огонь. ВОЗДУХ, ВОДА, ЗЕМЛЯ, ОГОНЬ  — 4 стихии, чтобы каждый мог выбрать свою!")
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


