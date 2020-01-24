//
//  MenuCell.swift
//  IndoThaiNews
//
//  Created by Kailash Gaur on 14/09/18.
//  Copyright © 2018 Kailash Gaur. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {
    @IBOutlet weak var lblTitle : UILabel!
    @IBOutlet weak var iconImageView : UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func populateContent(WithMenu menu:Menu) -> Void {
        lblTitle.text = menu.title
        if let iconImage = UIImage(named: menu.iconImage.lowercased()){
            iconImageView.image = iconImage
            iconImageView.frame.size = iconImage.size
        }
        
    }

}
