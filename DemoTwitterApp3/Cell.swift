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
    @IBOutlet weak var labelView: UIView!
    
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        editButton.layer.cornerRadius = 10
        deleteButton.layer.cornerRadius = 10
    }
    
    func configure(with model: Model) {
        user.text = model.user
        label.text = model.text
    }
    func labelView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       //セルの高さを可変に設定
       return UITableView.automaticDimension
     }
    
    
}
