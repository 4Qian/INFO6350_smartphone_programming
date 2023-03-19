//
//  TableViewCell.swift
//  Midterm
//
//  Created by 李谦 on 3/18/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblNameAndCity: UILabel!
    @IBOutlet weak var imgContainer: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
