//
//  SubtittleCell.swift
//  reuseCellDemo
//
//  Created by anhxa100 on 8/22/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class SubtittleCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        textLabel?.text = ""
        detailTextLabel?.text = ""
//        backgroundColor = UIColor
    }
    
}
