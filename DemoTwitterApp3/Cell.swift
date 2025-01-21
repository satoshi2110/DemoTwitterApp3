//
//  Cell.swift
//  DemoTwitterApp3
//
//  Created by N S on 2025/01/21.
//

import UIKit

class Cell: UITableViewCell {
    
    @IBOutlet weak var user: UILabel!
    @IBOutlet weak var label: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with model: Model) {
        user.text = model.user
        label.text = model.text
    }
}
