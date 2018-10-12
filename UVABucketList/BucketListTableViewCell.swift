//
//  BucketListTableViewCell.swift
//  UVABucketList
//
//  Created by user145551 on 10/3/18.
//  Copyright © 2018 user145551. All rights reserved.
//

import UIKit

class BucketListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var itemNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    

}
    


