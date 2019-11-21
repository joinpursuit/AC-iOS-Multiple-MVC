//
//  OneAnimalViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Yuliia Engman on 11/19/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class OneAnimalViewController: UIViewController {
    
    
    @IBOutlet weak var animalImageView: UIImageView!
    
    @IBOutlet weak var animalName: UILabel!
    
    @IBOutlet weak var animalDescription: UITextView!
        
        var animal: ZooAnimal?

    override func viewDidLoad() {
           super.viewDidLoad()
        updateUI()
    }
    
    
    func updateUI() {
        guard let theAnimal = animal else {
           fatalError("Couldn;t get an animal value, verify prepare(for seque: )")
        }
        animalImageView.image = UIImage(named: theAnimal.imageNumber.description)
        animalName.text = theAnimal.name
        animalDescription.text = theAnimal.info
    }

}
