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
    var tastes: [Taste] {
        products[tasteIndex].tastes
    }
    var tasteIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showTasteViewTable(with: tastes)
    }

    private func showTasteViewTable(with tastes: [Taste]) {

        for (button, taste) in zip(tasteButtons, tastes) {
            button.setTitle(taste.title, for: .normal)
        }

    }
    
    @IBAction func tasteButtonPressed(_ sender: UIButton) {
        guard let buttonIndex = tasteButtons.firstIndex(of: sender) else { return }
        let taste = tastes[buttonIndex]
        tasteChoice.append(taste)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
