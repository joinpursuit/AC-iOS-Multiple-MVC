//
//  AnimalViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by EricM on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    var animal: ZooAnimal!
    
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var message: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name2.text = animal.name
        image2.image = UIImage(named: String(animal.imageNumber))
        message.text = animal.info
        
        super.viewDidLoad()

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
