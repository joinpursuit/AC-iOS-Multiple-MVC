//
//  ZooAnimalTableViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Levi Davis on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class ZooAnimalTableViewController: UITableViewController {
    
    let zooAnimal = ZooAnimal.zooAnimals
    let mammals = ZooAnimal.mammals
    let reptiles = ZooAnimal.reptiles
    let birds = ZooAnimal.birds
    let insects = ZooAnimal.insects
    let amphibians = ZooAnimal.amphibians
    

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
    
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Mammals"
        case 1:
            return "Reptiles"
        case 2:
            return "Birds"
        case 3:
            return "Insects"
        case 4:
            return "Amphibians"
        default:
            return "error"
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0:
            return mammals.count
        case 1:
            return reptiles.count
        case 2:
            return birds.count
        case 3:
            return insects.count
        case 4:
            return amphibians.count
        default:
            return 0
            
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let oneAnimal = zooAnimal[indexPath.row]
//        let mammal = mammals[indexPath.row]
//        let reptile = reptiles[indexPath.row]
//        let bird = birds[indexPath.row]
//        let insect = insects[indexPath.row]
//        let amphibian = amphibians[indexPath.row]
//
        switch indexPath.section {
        case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomZooCell", for: indexPath) as? ZooAnimalTableViewCell {
                cell.nameLabel.text = mammals[indexPath.row].name
                cell.classificationLabel.text = mammals[indexPath.row].classification
                cell.animalImage.image = UIImage(named: String(mammals[indexPath.row].imageNumber))
                return cell
            }
        
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomZooCell", for: indexPath) as? ZooAnimalTableViewCell {
                cell.nameLabel.text = reptiles[indexPath.row].name
                cell.classificationLabel.text = reptiles[indexPath.row].classification
                cell.animalImage.image = UIImage(named: String(reptiles[indexPath.row].imageNumber))
                return cell
            }
        case 2:
                if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomZooCell", for: indexPath) as? ZooAnimalTableViewCell {
                    let bird = birds[indexPath.row]
                    cell.nameLabel.text = bird.name
                    cell.classificationLabel.text = bird.classification
                    cell.animalImage.image = UIImage(named: String(bird.imageNumber))
                    return cell
            }
        case 3:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomZooCell", for: indexPath) as? ZooAnimalTableViewCell {
                let insect = insects[indexPath.row]
                cell.nameLabel.text = insect.name
                cell.classificationLabel.text = insect.classification
                cell.animalImage.image = UIImage(named: String(insect.imageNumber))
                return cell
            }
        case 4:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomZooCell", for: indexPath) as? ZooAnimalTableViewCell {
                let amphibian = amphibians[indexPath.row]
                cell.nameLabel.text = amphibian.name
                cell.classificationLabel.text = amphibian.classification
                cell.animalImage.image = UIImage(named: String(amphibian.imageNumber))
                return cell
            }
        default:
            return UITableViewCell()
                
                }
            return UITableViewCell()
            }

    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //we want to move to the vc with the storyboard ID "movieDetailViewController"
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        if let viewController = storyBoard.instantiateViewController(withIdentifier: "ZooAnimalDetailViewController") as? ZooAnimalDetailViewController {
            switch indexPath.section {
            case 0:
                viewController.zooAnimal = mammals[indexPath.row]
                navigationController?.pushViewController(viewController, animated: true)
            case 1:
                viewController.zooAnimal = reptiles[indexPath.row]
                navigationController?.pushViewController(viewController, animated: true)
            case 2:
                viewController.zooAnimal = birds[indexPath.row]
                navigationController?.pushViewController(viewController, animated: true)
            case 3:
                viewController.zooAnimal = insects[indexPath.row]
                navigationController?.pushViewController(viewController, animated: true)
            case 4:
                viewController.zooAnimal = amphibians[indexPath.row]
                navigationController?.pushViewController(viewController, animated: true)
            default:
                print("error")
            }

        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let segueIdentifier = segue.identifier else {fatalError("no id in segue")}
//
//        switch segueIdentifier {
//        case "ZooDetailSegue":
//            guard let zooAnimalDetailVC = segue.destination as? ZooAnimalDetailViewController else {
//                fatalError("oof")
//            }
//            guard let selectedIndexPath = tableView.indexPathForSelectedRow else {
//                fatalError("ufda")
//            }
//            zooAnimalDetailVC.zooAnimal = zooAnimal[selectedIndexPath.row]
//        default:
//            fatalError("double oof")
//        }
//    }

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

}
