//
//  AnimalListTableViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Mariel Hoepelman on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalListTableViewController: UITableViewController {
    
    var animals = ZooAnimal.zooAnimals
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueIdentifier = segue.identifier else { fatalError("No identifier in segue") }
        
        switch segueIdentifier {
        case "segueID":
            guard let animalDVC = segue.destination as? AnimalDescriptionViewController else {
                fatalError("Unexpected segue VC")
            }
            guard let selectedIndexPath = tableView.indexPathForSelectedRow else {
                fatalError("No row was selected")
            }
            animalDVC.animal = animals[selectedIndexPath.row]
        default:
            fatalError("Unexpected segue identifier")
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let animal = animals[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "animalTVC", for: indexPath) as? AnimalListTableViewCell {
            cell.animalNameLabel.text = animal.name
            cell.animalOriginLabel.text = animal.origin
            cell.animalImage.image = UIImage(named: String(animal.imageNumber))
            return cell
        }
      return UITableViewCell()
    }
//    let movie = movies[indexPath.row] done
//    if let cell = tableView.dequeueReusableCell(withIdentifier: "movieListCell", for: indexPath) as? MovieListTableViewCell {
//        cell.genreLabel.text = movie.genre
//        cell.titleLabel.text = movie.name
//        cell.posterImage.image = UIImage(named: movie.posterImageName)
//        return cell
//    }
//    return UITableViewCell()
//}
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 229
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

}
