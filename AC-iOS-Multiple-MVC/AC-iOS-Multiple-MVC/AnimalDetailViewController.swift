//
//  AnimalDetailViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Liubov Kaper  on 11/18/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalDetailViewController: UIViewController {
    
    
    @IBOutlet weak var animalImageView: UIImageView!
    
    @IBOutlet weak var animalDescriptionLabel: UILabel!
    
    var animal: ZooAnimal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    func updateUI() {
        guard let theAnimal = animal else {
            fatalError("Couldn't get a animal value, veryfy prepare (for segue: )")
        }
        title = animal?.name
        animalImageView.image = UIImage(named: theAnimal.imageNumber.description)
        animalDescriptionLabel.text = theAnimal.info
        
    }
    
}
