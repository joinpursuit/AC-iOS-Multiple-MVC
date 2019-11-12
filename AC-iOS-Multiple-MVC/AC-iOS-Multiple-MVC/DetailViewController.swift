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
    var someImage : UIImage = UIImage()
    var someText: String = ""
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        imageView.image = someImage
        textView.text = someText
    }
}
