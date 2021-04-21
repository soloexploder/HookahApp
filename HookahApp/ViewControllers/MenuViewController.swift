//
//  MenuTableViewController.swift
//  HookahApp
//
//  Created by Alex Tegai on 21.04.2021.
//

import UIKit

class MenuViewController: UITableViewController {

    var products: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Mixes"

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        products.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let product = products[indexPath.row]
        
        content.text = product.name
        cell.contentConfiguration = content

        return cell
    }


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailsViewController
            detailVC.product = products[indexPath.row]
        }
    }
   
}
