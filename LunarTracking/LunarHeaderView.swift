//
//  LunarHeaderView.swift
//  LunarTracking
//
//  Created by Christopher Prater on 4/12/17.
//  Copyright © 2017 Christopher Prater. All rights reserved.
//

import UIKit

class LunarHeaderView: UIView {
    // MARK: Properties
    @IBOutlet weak var phaseIconLabel: UILabel!
    @IBOutlet weak var phaseNameLabel: UILabel!
    @IBOutlet weak var phaseAgeLabel: UILabel!
    @IBOutlet weak var phaseIlluminationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.phaseIconLabel.text = ""
        self.phaseNameLabel.text = ""
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
