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
    
    override func viewDidLoad() {
        super.viewDidLoad()
       animalNameLabel.text = animal.name

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
