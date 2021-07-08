//
//  CustomCellCharacter.swift
//  YuYuHakushoCharacters
//
//  Created by Daniel Washington Ignacio on 08/07/21.
//

import UIKit

class CustomCellCharacter: UITableViewCell {
    @IBOutlet weak var imageCharacer: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var specieLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var classLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
