//
//  ZooAnimalDetailViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by C4Q on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class ZooAnimalDetailViewController: UIViewController {

    @IBOutlet weak var animalImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var classifivationLabel: UILabel!
    @IBOutlet weak var originLabel: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    var animal: ZooAnimal?
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let animal = animal else {
            return
        }
        // Do any additional setup after loading the view.
        animalImageView.image = UIImage(named: animal.imageNumber.description)
        nameLabel.text = animal.name
        originLabel.text = animal.origin
        classifivationLabel.text = animal.classification
       textView.text = animal.info
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
