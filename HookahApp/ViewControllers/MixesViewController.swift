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
    var tasteChoice: [Taste] = []
    var tastes = Taste.getTaste()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showTasteButtons(with: tastes)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mixChoiceVC = segue.destination as? MixChoiceViewController else { return }
        mixChoiceVC.tasteChoice = tasteChoice
    }

    private func showTasteButtons(with tastes: [Taste]) {
        for (button, taste) in zip(tasteButtons, tastes) {
            button.setTitle(taste.title, for: .normal)
        }
    }
    
    @IBAction func tasteButtonPressed(_ sender: UIButton) {
        guard let buttonIndex = tasteButtons.firstIndex(of: sender) else { return }
        let taste = tastes[buttonIndex]
        tasteChoice.append(taste)
        
        performSegue(withIdentifier: "showChoiceResult", sender: nil)
    }
    

}
