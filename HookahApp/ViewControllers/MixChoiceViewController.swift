//
//  MixChoiceViewController.swift
//  HookahApp
//
//  Created by Alex Tegai on 21.04.2021.
//

import UIKit

class MixChoiceViewController: UIViewController {

    @IBOutlet var mixDescription: UILabel!
    var tasteChoice: [Taste]!
//    var tasteType: [Mix]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MixChoiceViewController {
    private func updateResult() {
        var typeOfTaste: [Mix: Int] = [:]
        let tastes = tasteChoice.map { $0.type }

        for taste in tastes {
            if let tasteTypeCount = typeOfTaste[taste] {
                typeOfTaste.updateValue(tasteTypeCount + 1, forKey: taste)
            } else {
                typeOfTaste[taste] = 1
            }
        }

        let sortedChoices = typeOfTaste.sorted { $0.value > $1.value }
        guard let userChoice = sortedChoices.first?.key else { return }

        updateUI(with: userChoice)
    }

    private func updateUI(with choice: Mix) {
        mixDescription.text = choice.mixer
    }
}

//extension MixChoiceViewController {
//    private func updateResult() {
////        var typeOfTaste: [Mix: Int] = [:]
//        let tastes = tasteChoice.map { $0.type }
//        let lap = tasteType.map { $0 }
//
//        for taste in tastes {
//            if taste == lap {
//                mixDescription.text = tasteType.
//            }
//        }
        

        
    

