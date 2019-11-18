//
//  ZooAnimalCellTableViewCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Bienbenido Angeles on 11/18/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class ZooAnimalCell: UITableViewCell {

    @IBOutlet weak var zooAnimalImageView:UIImageView!
    @IBOutlet weak var zooAnimalNameLabel:UILabel!
    @IBOutlet weak var zooAnimalOriginLabel:UILabel!
    
    func configureCell(for zooAnimal: ZooAnimal){
        zooAnimalImageView.image = UIImage(named: zooAnimal.imageNumber.description)
        zooAnimalNameLabel.text = zooAnimal.name
        zooAnimalOriginLabel.text = zooAnimal.origin
    }
    
}
