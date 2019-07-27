//
//  DataCellClass.swift
//  videoPlayer
//
//  Created by user915640 on 7/27/19.
//  Copyright © 2019 user915640. All rights reserved.
//

import UIKit

class DataCellClass: UITableViewCell {
    
    
    @IBOutlet weak var PlayerView: PlayerViewClass!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
