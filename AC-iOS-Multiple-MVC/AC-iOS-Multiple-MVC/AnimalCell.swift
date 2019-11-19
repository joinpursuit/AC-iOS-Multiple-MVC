//
//  animalCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Liubov Kaper  on 11/18/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalCell: UITableViewCell {

    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalOriginLabel: UILabel!

    
    func configureCell(for animal: ZooAnimal) {
        animalImageView.image = UIImage(named: animal.imageNumber.description)
        animalNameLabel.text = animal.name
        animalOriginLabel.text = animal.origin
    }
}
