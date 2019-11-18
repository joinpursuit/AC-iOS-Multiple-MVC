//
//  AnimalCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Yuliia Engman on 11/18/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalCell: UITableViewCell {
    
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalName: UILabel!
    @IBOutlet weak var animalClassification: UILabel!
    @IBOutlet weak var animalOrigin: UILabel!
    

//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

    
    func configureCell(for animal: ZooAnimal) {
        animalImage.image = UIImage(named: String(animal.imageNumber)) // could not use image Literal - since it uses exact animal
        animalName.text = animal.name
        animalName.text = animal.classification
        animalOrigin.text = animal.origin
    }
}
