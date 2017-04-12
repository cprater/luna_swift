//
//  PhaseTableViewCell.swift
//  LunarTracking
//
//  Created by Christopher Prater on 4/12/17.
//  Copyright © 2017 Christopher Prater. All rights reserved.
//

import UIKit

class PhaseTableViewCell: UITableViewCell {
    // MARK: Properties
    @IBOutlet var iconLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    var viewModel: PhaseViewModel? {
        didSet {
            self.iconLabel.text = viewModel?.icon
            self.dateLabel.text = viewModel?.date
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.iconLabel.text = ""
        self.dateLabel.text = ""
        
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
