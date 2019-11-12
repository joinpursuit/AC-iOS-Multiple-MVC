//
//  DetailViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Cameron Rivera on 11/12/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController{
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    var anAnimal: ZooAnimal!
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        imageView.image = UIImage(named:String(anAnimal.imageNumber))
        textView.text = anAnimal.info
        title = anAnimal.name
    }
}
