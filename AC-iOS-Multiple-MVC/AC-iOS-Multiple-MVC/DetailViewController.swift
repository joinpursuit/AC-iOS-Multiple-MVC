//
//  DetailViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Ahad Islam on 12/15/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextView!
    
    
    var animal: ZooAnimal!

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "\(animal.imageNumber)")
        label.text = animal.name
        textField.text = animal.info
    }
    

}
