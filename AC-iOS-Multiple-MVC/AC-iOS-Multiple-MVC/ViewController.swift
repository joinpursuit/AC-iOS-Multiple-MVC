//
//  ViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Tom Seymour on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var zooAnimals = ZooAnimal.zooAnimals{
        didSet{
            //tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.reloadData()
        tableView.dataSource = self
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let zooAnimalsDVC = segue.destination as? ZooAnimalDetailVC, let indexPath = tableView.indexPathForSelectedRow else {
            fatalError("ZooAnimalDVC, indexPath failed to be configured")
        }
        
        zooAnimalsDVC.zooAnimal = zooAnimals[indexPath.row]
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return zooAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //cell to use
        //conforming to custom cell
        //
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? ZooAnimalCell else {
            fatalError("Could not deque zoo animal cell")
        }
        
        
        let zooAnimal = zooAnimals[indexPath.row]
        
        cell.configureCell(for: zooAnimal)
        
        return cell
    }
    
    //section specific methods for the future
    
    
}

