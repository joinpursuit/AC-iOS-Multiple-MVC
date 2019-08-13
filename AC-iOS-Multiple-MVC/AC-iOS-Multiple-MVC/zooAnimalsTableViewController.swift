//
//  zooAnimalsTableViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Kimball Yang on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class zooAnimalsTableViewController: UITableViewController  {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? AnimalDetailViewController else {return}
        if segue.identifier == "detailz" {
            guard let indexPath = tableView.indexPathForSelectedRow else {return}
            let animal = ZooAnimal.zooAnimals[indexPath.row]
            destination.animals = animal
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
      
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ZooAnimal.zooAnimals.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let daAnimals = tableView.dequeueReusableCell(withIdentifier: "zAnimals", for: indexPath) as? zooTableViewCell {
            daAnimals.zooImage.image = UIImage(named: String(ZooAnimal.zooAnimals[indexPath.row].imageNumber))
           
            
            daAnimals.titleLabel.text = ZooAnimal.zooAnimals[indexPath.row].name
            daAnimals.subtitle.text = ZooAnimal.zooAnimals[indexPath.row].origin
            
            return daAnimals
        }
        return UITableViewCell()
    }

}
