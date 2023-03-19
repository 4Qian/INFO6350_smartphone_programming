//
//  ViewController.swift
//  Midterm
//
//  Created by 李谦 on 3/18/23.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tblView: UITableView!
    
    var clickIdex = 0;
    
    let wonders: [Wonder] = [
            Wonder(title: "The Colosseum", imageName: "Colosseum", description: "The Colosseum is the great oval amphitheater in the center of Rome where gladiators once fought for their life. "),
            Wonder(title: "The Great Wall of China", imageName: "The Great Wall of China", description: "The Great Wall of China is a huge barrier that spans thousands of miles along China’s historic northern border. "),
            Wonder(title: "The Taj Mahal", imageName: "The Taj Mahal", description: "India’s renowned Taj Mahal (Persian for Crown of Palaces) is the stunning white marble mausoleum on the bank of the Yamuna River in the city of Agra."),
            Wonder(title: "Christ the Redeemer", imageName: "Christ", description: "The totemic statue of Christ the Redeemer stands over Rio de Janeiro on the top of Mount Corcovado."),
            Wonder(title: "Machu Picchu", imageName: "Machu Picchu", description: "Machu Picchu is a lost treasure of the 15th century, a rare citadel discovered high in the Andes mountains above the Peruvian Sacred Valley. "),
            Wonder(title: "Chichen Itza", imageName: "Chichen Itza", description: "Deep in the Mexican state of Yucatán lies Chichen Itza, a historic Mayan city built between the 9th and 12th centuries."),
            Wonder(title: "Petra", imageName: "Petra", description: "Petra, the ancient city in southern Jordan is also known as the ‘rose city’ for its golden hue. It dates as far back as 312BC. ")
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wonders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.lblNameAndCity.text = wonders[indexPath.row].title
        cell.imgContainer.image = UIImage(named: wonders[indexPath.row].imageName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        self.clickIdex = indexPath.row
        performSegue(withIdentifier: "segueDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDetail" {
            let secondVC = segue.destination as! DetailsViewController
            let wonder = wonders[clickIdex]
            secondVC.desc = wonder.description
        }
    }
}



