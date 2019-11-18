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
    
//   // var continents = [[Country]]() {
//      didSet { // using didSet {..} property observer to reload the table view
//          tableView.reloadData()
//      }
//      }
//    
//    
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        tableView.dataSource = self
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//}

//// step 1: conform to UITableViewDataSource
//  extension ViewController: UITableViewDataSource {
//     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//         // since we have sections we need to return the section's count
//         // each section (continent) knows how many countries it has,
//         // e.g. Africa for now has 1 country
//         ZooAnimal.count // for flat array we would just have continents.count
//         // returns how many countries in the section
////     }
//
//     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//         guard let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath) as? CountryCell else {
//             // explicitly crashed the app at runtime if
//             // a CountryCell does not exist, this is a developer error
//              fatalError("Coudn't dequeue a CountryCell")
//         }
//
//
//         // get the object (country) to be set an the current indexPath
//         let country = continents[indexPath.section][indexPath.row]
//
//         // configure the country cell
//         cell.configureCell(for: country)
//         return cell
//     }
//
//     // 2 more section specific protocol methods we need
//     // default count for sections is 1 if numberOfSections is not implemented
//     func numberOfSections(in tableView: UITableView) -> Int {
//         return continents.count
//     }
//
//
//     func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//         return continents[section].first?.continent
//     }
//
// }
//: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // since we have sections we need to return the section's count
//        // each section (continent) knows how many countries it has,
//        // e.g. Africa for now has 1 country
//        continents[section].count // for flat array we would just have continents.count
//        // returns how many countries in the section
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath) as? CountryCell else {
//            // explicitly crashed the app at runtime if
//            // a CountryCell does not exist, this is a developer error
//             fatalError("Coudn't dequeue a CountryCell")
//        }
//
//
//        // get the object (country) to be set an the current indexPath
//        let country = continents[indexPath.section][indexPath.row]
//
//        // configure the country cell
//        cell.configureCell(for: country)
//        return cell
//    }
//
//    // 2 more section specific protocol methods we need
//    // default count for sections is 1 if numberOfSections is not implemented
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return continents.count
//    }
//
//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return continents[section].first?.continent
//    }
    
}


