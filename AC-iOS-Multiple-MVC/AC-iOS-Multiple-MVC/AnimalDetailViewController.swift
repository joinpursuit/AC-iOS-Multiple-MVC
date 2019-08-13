//
//  AnimalDetailViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Kimball Yang on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalDetailViewController: UIViewController {

    
    var animals: ZooAnimal!
    
    @IBOutlet weak var detImage: UIImageView!
    @IBOutlet weak var detLabel: UILabel!
    @IBOutlet weak var detText: UITextView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        
        // Do any additional setup after loading the view.
    }
    
    
    // Do any additional setup after loading the view.
    
    
    private func setUpViews() {
        detLabel.text = animals.name
        detImage.image = UIImage(named: String(animals.imageNumber))
        detText.text = animals.info
}
    

}
