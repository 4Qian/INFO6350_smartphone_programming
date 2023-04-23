//
//  HomeViewController.swift
//  FinalApp
//
//  Created by 李谦 on 4/20/23.
//

import UIKit
import RealmSwift

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UploadImageProtocol  {
    
    let realm = try! Realm()
    
    var images : [UIImage] = [UIImage]()
    var locations = [String]()
    var imageTitles : [String] = [String]()
   
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imgData: Results<InstaImageCelldata> = realm.objects(InstaImageCelldata.self)
        let allImgCellData: [InstaImageCelldata] = imgData.toArray()
        for cellData in allImgCellData {
            if let imageData = cellData.Image {
                images.append(UIImage(data: imageData)!)
                locations.append(cellData.location)
                imageTitles.append(cellData.title)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.lblTitle.text = imageTitles[indexPath.row]
        cell.lblLocation.text = locations[indexPath.row]
        cell.imgContainer.image = images[indexPath.row]
        return cell
    }
    
    func uploadedImageDelegate(img: UIImage, locationImg: String, titleImg: String) {
        images.append(img)
        locations.append(locationImg)
        imageTitles.append(titleImg)
//        print(imageTitles.count)
        
        tblView.reloadData()
    
    }
}

extension Results {
    func toArray() -> [Element] {
      return compactMap {
        $0
      }
    }
 }
