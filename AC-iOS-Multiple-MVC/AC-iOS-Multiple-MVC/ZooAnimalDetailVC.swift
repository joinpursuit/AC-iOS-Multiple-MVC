//
//  ZooAnimalDetailVC.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Bienbenido Angeles on 11/18/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class ZooAnimalDetailVC: UIViewController {
    
    @IBOutlet weak var zooAnimalImageView: UIImageView!
    @IBOutlet weak var zooAnimalNameLabel: UILabel!
    @IBOutlet weak var zooAnimalDescTextView: UITextView!
    
    var zooAnimal:ZooAnimal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatedUI()

        // Do any additional setup after loading the view.
    }
    
    func updatedUI(){
        guard let zooAnimalObj = zooAnimal else {
            //set the nav title
            fatalError("Couldn't get a country value, verify prepare(for segue: )")
        }
        navigationItem.title = zooAnimalObj.name
        zooAnimalImageView.image = UIImage(named: zooAnimalObj.imageNumber.description)
        zooAnimalNameLabel.text = zooAnimalObj.name
        zooAnimalDescTextView.text = zooAnimalObj.info
    }

}
