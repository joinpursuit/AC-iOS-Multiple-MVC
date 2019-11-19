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
    
    
    var classifications = [[ZooAnimal]]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        classifications = ZooAnimal.getClassifications()
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let animalDetailController = segue.destination as? AnimalDetailViewController, let indexPath = tableView.indexPathForSelectedRow else {
            fatalError("animal detail controller, indexPath failed to be configured")
        }
        let animal = classifications[indexPath.section][indexPath.row]
        animalDetailController.animal = animal
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        classifications[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? AnimalCell else {
            fatalError("Couldn't dequeue AnimalCell")
        }
            let animal = classifications[indexPath.section][indexPath.row]
            cell.configureCell(for: animal)
        return cell
    }
    
    func numberOfSections (in tableView: UITableView) -> Int {
        print(classifications.count)
        return classifications.count
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return classifications[section].first?.classification
    }
    
}
