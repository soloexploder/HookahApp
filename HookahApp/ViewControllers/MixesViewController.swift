//
//  MixesViewController.swift
//  HookahApp
//
//  Created by Alex Tegai on 21.04.2021.
//

import UIKit

class MixesViewController: UIViewController {

    @IBOutlet var tasteButtons: [UIButton]!
    
    var products = Product.getProduct()
    let tastes = Mix.getTasteName()
    var tasteChoice: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showTasteButtons(with: tastes)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mixChoiceVC = segue.destination as? MixChoiceViewController else { return }
        mixChoiceVC.tasteChoice = tasteChoice
    }

    // MARK: - Change Buttons Names
    private func showTasteButtons(with tastes: [Mix]) {
        for (button, taste) in zip(tasteButtons, tastes) {
            button.setTitle(taste.rawValue, for: .normal)
        }
    }
    // MARK: - IBActions
    @IBAction func tasteButtonPressed(_ sender: UIButton) {
        guard let buttonIndex = tasteButtons.firstIndex(of: sender) else { return }
        let taste = tastes[buttonIndex]
        tasteChoice = taste.mixer
        
        performSegue(withIdentifier: "showChoiceResult", sender: nil)
    }
    

}
