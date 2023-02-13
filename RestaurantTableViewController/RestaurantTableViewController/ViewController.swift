//
//  ViewController.swift
//  RestaurantTableViewController
//
//  Created by 李谦 on 2/12/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let restaurantInfo = [
       ("Duke's Seafood", ["Clam Chowder", "Crab Cake", "Salmon Sliders"]),
       ("The Pink Door", ["Linguine Alle Vongole", "Squid Ink Pasta", "Caesar Salad"]),
       ("Happy Lamb Hot Pot", ["Fried Buns", "House Lamb Wontons", "Original Bone Marrow"])
    ]
    var selectedRestaurantFood = [String]()
    
    @IBOutlet weak var tblViewTop: UITableView!
    @IBOutlet weak var tblViewBottom: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tblViewTop {
            return restaurantInfo.count
        }else{
            return selectedRestaurantFood.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if tableView == tblViewTop {
            cell.textLabel?.text = restaurantInfo[indexPath.row].0
        }else{
            cell.textLabel?.text = selectedRestaurantFood[indexPath.row]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblViewTop {
            selectedRestaurantFood = restaurantInfo[indexPath.row].1
            tblViewBottom.reloadData()
        }
    }
}

