//
//  ZooAnimalDetailViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Levi Davis on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class ZooAnimalDetailViewController: UIViewController {
    
    var zooAnimal: ZooAnimal!

    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailNameLabel: UILabel!
    @IBOutlet weak var detailTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()

        // Do any additional setup after loading the view.
    }
    
    private func setUpViews() {
        detailNameLabel.text = zooAnimal.name
        detailTextView.text = zooAnimal.info
        detailImage.image = UIImage(named: "\(zooAnimal.imageNumber)")
    }
    

    static func setUpFromStoryboard() -> ZooAnimalDetailViewController? {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
         if let viewController = storyBoard.instantiateViewController(withIdentifier: "ZooAnimalDetailViewController") as? ZooAnimalDetailViewController {
            return viewController
         }
         else {
            return nil
        }
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
