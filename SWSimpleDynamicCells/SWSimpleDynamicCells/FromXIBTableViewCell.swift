//
//  FromXIBTableViewCell.swift
//  SWSimpleDynamicCells
//
//  Created by Don Mag on 6/16/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class FromXIBTableViewCell: UITableViewCell {

	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var bodyLabel: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
		
		titleLabel.backgroundColor = .clear
		bodyLabel.backgroundColor = .clear
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
