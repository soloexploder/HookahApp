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

struct Tobacco {
    let title: String
    let discription: String
    
}

extension Tobacco {
    static func getTobacco() -> [Tobacco] {
        [
            Tobacco(title: "Darkside", discription: "Darkside – настоящий мастадонт кальянный индустрии. Отменное качество, отличный бленд табачного сырья, постоянно дорабатываемая вкусовая палитра – все это позволяет бренду выступать в качестве «законодателя мод» среди табачных производителей в России. "),
            Tobacco(title: "Musthave", discription: "Отличительной чертой табака для кальяна Must Have являются гипернатуральные, яркие, сочные фруктово-ягодные и десертные вкусы созданные в кооперации с ведущими специалистами Европы, Японии и Америки."),
            Tobacco(title: "Element", discription: "На восприятие табака во многом влияет его крепость, именно поэтому появилась концепция четырех стихий, самой лёгкой из которых стал воздух, а самой крепкой — огонь. ВОЗДУХ, ВОДА, ЗЕМЛЯ, ОГОНЬ  — 4 стихии, чтобы каждый мог выбрать свою!")
        ]
    }
}

