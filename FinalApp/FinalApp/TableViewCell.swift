//
//  TableViewCell.swift
//  FinalApp
//
//  Created by 李谦 on 4/20/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var imgContainer: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
