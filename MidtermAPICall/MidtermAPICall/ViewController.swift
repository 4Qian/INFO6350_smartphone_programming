//
//  ViewController.swift
//  MidtermAPICall
//
//  Created by 李谦 on 3/18/23.
//


import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController {
    @IBOutlet weak var txtSymbol: UITextField!
    @IBOutlet weak var lblCompanyName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblWebsite: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getDetail(_ sender: Any) {
    guard let symbol = txtSymbol.text else {return}
        let url = "\(baseURL)\(symbol)?apikey=\(apiKey)"
        SwiftSpinner.show("Getting Stock price for \(symbol)")
        AF.request(url).responseJSON { response in
            SwiftSpinner.hide()
            if (response.error != nil) {
                print("Error in response")
                return
            }
            guard let rawData = response.data else {return}
            guard let jsonArray = JSON(rawData).array else {return}
            guard let stock = jsonArray.first else {return}
            let company = stock["companyName"].stringValue
            let price = stock["price"].stringValue
            let website = stock["website"].stringValue
            self.lblCompanyName.text = "Company Name: \(company)"
            self.lblPrice.text = "Price: $\(price)"
            self.lblWebsite.text = "Website: \(website)"
        }
    }
}

