//
//  MixChoiceViewController.swift
//  HookahApp
//
//  Created by Alex Tegai on 21.04.2021.
//

import UIKit

class MixChoiceViewController: UIViewController {

    @IBOutlet var mixDescription: UILabel!

    var tasteChoice: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mixDescription.text = tasteChoice
    }
}

