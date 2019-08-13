//
//  AnimalTableViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by EricM on 8/13/19.
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
        let test = Functions()
        return test.rows(section)
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ourCell", for: indexPath) as? AnimalTableViewCell
        {
            cell.name1?.text = ZooAnimal.amphibian[indexPath.row].name
            cell.image1.image = UIImage(named:String( ZooAnimal.amphibian[indexPath.row].imageNumber))
            cell.location.text = ZooAnimal.amphibian[indexPath.row].origin
            
            return cell
        }
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "ourCell", for: indexPath) as? AnimalTableViewCell
            {
                cell.name1?.text = ZooAnimal.bird[indexPath.row].name
                cell.image1.image = UIImage(named:String( ZooAnimal.bird[indexPath.row].imageNumber))
                cell.location.text = ZooAnimal.bird[indexPath.row].origin
                
                return cell
            }
        case 2:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "ourCell", for: indexPath) as? AnimalTableViewCell
            {
                cell.name1?.text = ZooAnimal.insect[indexPath.row].name
                cell.image1.image = UIImage(named:String( ZooAnimal.insect[indexPath.row].imageNumber))
                cell.location.text = ZooAnimal.insect[indexPath.row].origin
                
                return cell
            }
        case 3:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "ourCell", for: indexPath) as? AnimalTableViewCell
            {
                cell.name1?.text = ZooAnimal.mammal[indexPath.row].name
                cell.image1.image = UIImage(named:String( ZooAnimal.mammal[indexPath.row].imageNumber))
                cell.location.text = ZooAnimal.mammal[indexPath.row].origin
                
                return cell
            }
        case 4:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "ourCell", for: indexPath) as? AnimalTableViewCell
            {
                cell.name1?.text = ZooAnimal.reptile[indexPath.row].name
                cell.image1.image = UIImage(named:String( ZooAnimal.reptile[indexPath.row].imageNumber))
                cell.location.text = ZooAnimal.reptile[indexPath.row].origin
                
                return cell
            }
        default:
            print("nice try")
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let test = Functions()
        return test.title(section)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueIdentifier = segue.identifier else { fatalError("No identifier in segue") }
        
        switch segueIdentifier {
        case "AnimalSegway":
            guard let animalVC = segue.destination as? AnimalViewController else {
                fatalError("Unexpected segue VC")
            }
            guard let selectedIndexPath = tableView.indexPathForSelectedRow else {
                fatalError("No row was selected")
            }
            switch selectedIndexPath.section{
            case 0:
                animalVC.animal = ZooAnimal.amphibian[selectedIndexPath.row]
            case 1:
                animalVC.animal = ZooAnimal.bird[selectedIndexPath.row]
            case 2:
                animalVC.animal = ZooAnimal.insect[selectedIndexPath.row]
            case 3:
                animalVC.animal = ZooAnimal.mammal[selectedIndexPath.row]
            case 4:
                animalVC.animal = ZooAnimal.reptile[selectedIndexPath.row]
            default:
                print("nice try")
            }
            
        default:
            fatalError("Unexpected segue identifier")
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}


