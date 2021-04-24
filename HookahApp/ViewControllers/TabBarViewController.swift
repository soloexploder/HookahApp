//
//  TabBarViewController.swift
//  HookahApp
//
//  Created by Alex Tegai on 21.04.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    let products = Product.getProduct()
    let tobacco = Tobacco.getTobacco()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController(with: products)
    }
    
    // MARK: - Navigation
    
    private func setupViewController(with products: [Product]) {
        guard let viewControllers = tabBarController?.viewControllers else { return }
        
        viewControllers.forEach {
            
            if let menuVC = $0 as? MenuViewController {
                menuVC.products = products
            } else if let mixVC = $0 as? MixViewController {
                mixVC.products = products
            } else if let tobaccoVC = $0 as? TobaccoViewController {
                tobaccoVC.tobaccos = tobacco
            }
        }
    }
}
