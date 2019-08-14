//
//  AnimalListTableViewCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Mariel Hoepelman on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalOriginLabel: UILabel!
    @IBOutlet weak var animalImage: UIImageView!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
