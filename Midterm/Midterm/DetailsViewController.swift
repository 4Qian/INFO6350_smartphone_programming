//
//  DetailsViewController.swift
//  Midterm
//
//  Created by 李谦 on 3/18/23.
//

import UIKit

class DetailsViewController: UIViewController {
   
    @IBOutlet weak var lblDescription: UITextView!
    
    var desc: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblDescription.text = desc
    }
}
