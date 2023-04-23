//
//  TabBarViewController.swift
//  FinalApp
//
//  Created by 李谦 on 4/20/23.
//

import UIKit
import RealmSwift

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        let homeViewController = viewControllers?[0] as! HomeViewController
        let uploadPicVC = viewControllers?[1] as! UploadImageViewController
        uploadPicVC.uploadProtocol = homeViewController.self
    }
}
