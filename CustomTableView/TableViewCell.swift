//
//  TableViewCell.swift
//  CustomTableView
//
//  Created by Christiawan Eko Saputro on 10/10/18.
//  Copyright © 2018 Dev. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var imgBendera: UIImageView!
    @IBOutlet weak var lblNegara: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
