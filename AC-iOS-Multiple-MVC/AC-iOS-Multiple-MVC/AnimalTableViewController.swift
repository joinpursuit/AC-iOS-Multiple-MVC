//
//  AnimalTableViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Jason Ruan on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 5
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0:
            return ZooAnimal.mammals.count
        case 1:
            return ZooAnimal.birds.count
        case 2:
            return ZooAnimal.reptiles.count
        case 3:
            return ZooAnimal.insects.count
        case 4:
            return ZooAnimal.amphibians.count
        default :
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Mammals"
        case 1:
            return "Birds"
        case 2:
            return "Reptiles"
        case 3:
            return "Insects"
        case 4:
            return "Amphibians"
        default:
            return ""
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            return populateCell(indexPath: indexPath, animalArr: ZooAnimal.mammals)
        case 1:
            return populateCell(indexPath: indexPath, animalArr: ZooAnimal.birds)
        case 2:
            return populateCell(indexPath: indexPath, animalArr: ZooAnimal.reptiles)
        case 3:
            return populateCell(indexPath: indexPath, animalArr: ZooAnimal.insects)
        case 4:
            return populateCell(indexPath: indexPath, animalArr: ZooAnimal.amphibians)
        default:
            return UITableViewCell()
        }
    }

    func populateCell(indexPath: IndexPath, animalArr: [ZooAnimal]) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? AnimalCellTableViewCell {
            let animal = animalArr[indexPath.row]
            cell.animalImageView.image = UIImage(named: "\(animal.imageNumber)")
            cell.animalNameLabel.text = animal.name
            cell.originLabel.text = animal.origin
            return cell
        } else {
            return UITableViewCell()
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueIdentifier = segue.identifier else { fatalError("No identifier in segue") }
        
        switch segueIdentifier {
        case "animalDetails":
            guard let animalDetailVC = segue.destination as? ViewController else {
                fatalError("Unexpected segue VC")
            }
            guard let selectedIndexPath = tableView.indexPathForSelectedRow else {
                fatalError("No row was selected")
            }
            switch selectedIndexPath.section {
            case 0:
                animalDetailVC.animal = ZooAnimal.mammals[selectedIndexPath.row]
            case 1:
                animalDetailVC.animal = ZooAnimal.birds[selectedIndexPath.row]
            case 2:
                animalDetailVC.animal = ZooAnimal.reptiles[selectedIndexPath.row]
            case 3:
                animalDetailVC.animal = ZooAnimal.insects[selectedIndexPath.row]
            case 4:
                animalDetailVC.animal = ZooAnimal.amphibians[selectedIndexPath.row]
            default:
                break
            }
            
        default:
            fatalError("Unexpected segue identifier")
        }
    }
 

}
