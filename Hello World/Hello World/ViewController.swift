//
//  ViewController.swift
//  Hello World 1
//
//  Created by 李谦 on 1/16/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblExample: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressMeAction(_ sender: UIButton) {
        lblExample.text = "Hello World"
    }
}

