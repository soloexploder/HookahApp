//
//  TobaccoViewController.swift
//  HookahApp
//
//  Created by Alex Tegai on 21.04.2021.
//

import UIKit

class TobaccoViewController: UITableViewController {

    var tobaccos = Tobacco.getTobacco()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tobaccos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tobaccoCell", for: indexPath)
        let tobacco = tobaccos[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = tobacco.title
        content.image = UIImage(named: tobacco.title)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content

        return cell
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
