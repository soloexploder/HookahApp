//
//  DetailsViewController.swift
//  HookahApp
//
//  Created by Теона Магай on 21.04.2021.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var tastesLabel: UILabel!
    
    var product: Product!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = product.name
        tastesLabel.text = product.tastes
    }


}
