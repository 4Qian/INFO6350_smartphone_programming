//
//  ViewController.swift
//  FoodTableViewXib
//
//  Created by 李谦 on 2/14/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
   let foodNames = ["Bonbon","Cereal","Hamburger","Ice Cream","Pizza","Salad","Seafood"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.imageContainer.image = UIImage(named: foodNames[indexPath.row])
        cell.lblImage.text = foodNames[indexPath.row]
        return cell
    }
}

