//
//  AnimalDescriptionViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Mariel Hoepelman on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalDescriptionViewController: UIViewController {
    
    var animal: ZooAnimal!
    
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalDescriptionText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animalNameLabel.text = animal.name
        animalImage.image = UIImage(named: String(animal.imageNumber))
        animalDescriptionText.text = animal.info    

        // Do any additional setup after loading the view.
    }

}
