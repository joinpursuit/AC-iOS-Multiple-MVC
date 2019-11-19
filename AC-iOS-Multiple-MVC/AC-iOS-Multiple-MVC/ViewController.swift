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
        didSet { // using didSet {..} property observer to reload the table view
            tableView.reloadData()
        }
    }
   
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            tableView.dataSource = self
            tableView.delegate = self
            loadData()
    
        }
    func loadData() {
        classifications = ZooAnimal.getAnimals()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let oneAnimalVC = segue.destination as? OneAnimalViewController, let indexPath = tableView.indexPathForSelectedRow else {
            fatalError("oneAnimal VC, indexPath failed to be configured")
        }
        let animal = classifications[indexPath.section][indexPath.row]
        oneAnimalVC.animal = animal
    }
    
}


// step 1: conform to UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // since we have sections we need to return the section's count
        // each section (continent) knows how many countries it has,
        // e.g. Africa for now has 1 country
        return classifications[section].count // for flat array we would just have classification.count
        // returns how many countries in the section
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? AnimalCell else {
            // explicitly crashed the app at runtime if
            // a CountryCell does not exist, this is a developer error
            fatalError("Coudn't dequeue a AnimalCell")
        }
        
        
        // get the object (country) to be set an the current indexPath
        let animal = classifications[indexPath.section][indexPath.row]
        
        // configure the country cell
        cell.configureCell(for: animal)
        
        return cell
    }
    
    
    // 2 more section specific protocol methods we need
    // default count for sections is 1 if numberOfSections is not implemented
    func numberOfSections(in tableView: UITableView) -> Int {
        return classifications.count
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return classifications[section].first?.classification
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}





