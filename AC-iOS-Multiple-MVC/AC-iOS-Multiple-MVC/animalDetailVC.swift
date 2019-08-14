//
//  animalDetailVC.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Krystal Campbell on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class animalDetailVC: UIViewController {
    
    var animal: ZooAnimal!
    
    @IBOutlet weak var animalDetailImage: UIImageView!
    
    @IBOutlet weak var animalTextLabel: UILabel!
    
    @IBOutlet weak var animalTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalTextLabel.text = animal.name
        animalDetailImage.image = UIImage (named: String(animal.imageNumber))
        animalTextView.text = animal.info
        
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
