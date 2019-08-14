//
//  ViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Tom Seymour on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
  var allAnimals = ZooAnimal.zooAnimals
    
    var mammal = ZooAnimal.mammals
    var amphibian = ZooAnimal.amphibians
    var insect = ZooAnimal.insects
    var reptile = ZooAnimal.reptiles
    var bird = ZooAnimal.birds
    
//    func separator () {
//        for i in ZooAnimal.zooAnimals {
//            if i.classification == .mammal {
//                mammal.append(i)
//            } else {
//                if i.classification == .amphibian {
//                    amphibian.append(i)
//                } else {
//                    if i.classification == .insect {
//                        insect.append(i)
//                    } else {
//                        if i.classification == .reptile {
//                            reptile.append(i)
//                        } else {
//                            if i.classification == .bird {
//                                bird.append(i)
//                            }
//                        }
//                    }
//                }
//            }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return mammal.count
        case 1:
            return amphibian.count
        case 2:
            return insect.count
        case 3:
            return reptile.count
        case 4:
            return bird.count
        default:
            return 0
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 160
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
        if let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? animalCell {
            cell.animalName.text = mammal[indexPath.row].name
            
            cell.animalImage.image = UIImage(named: String( mammal[indexPath.row].imageNumber))
            cell.animalOrigin.text = mammal[indexPath.row].origin
            return cell
        }
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? animalCell {
                cell.animalName.text = amphibian[indexPath.row].name
                
                cell.animalImage.image = UIImage(named: String( amphibian[indexPath.row].imageNumber))
                cell.animalOrigin.text = amphibian[indexPath.row].origin
                return cell
            }
        case 2:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? animalCell {
                cell.animalName.text = insect[indexPath.row].name
                
                cell.animalImage.image = UIImage(named: String( insect[indexPath.row].imageNumber))
                cell.animalOrigin.text = insect[indexPath.row].origin
                return cell
            }
        case 3:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? animalCell {
                cell.animalName.text = reptile[indexPath.row].name
                
                cell.animalImage.image = UIImage(named: String( reptile[indexPath.row].imageNumber))
                cell.animalOrigin.text = reptile[indexPath.row].origin
                return cell
            }
        case 4:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? animalCell {
                cell.animalName.text = bird[indexPath.row].name
                
                cell.animalImage.image = UIImage(named: String( bird[indexPath.row].imageNumber))
                cell.animalOrigin.text = bird[indexPath.row].origin
                return cell

            
    }
        default:
            return UITableViewCell()
        }
        return UITableViewCell()
    }
            
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            switch section {
            case 0:
                return "Mammal"
            case 1:
                return "Amphibian"
            case 2:
                return "Insect"
            case 3:
                return "Reptile"
            case 4:
                return "Bird"
            default:
                return "will not execute"
            }
        }
            
    @IBOutlet weak var tableView: UITableView!
    


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as?  animalDetailVC else {return}
     //   if let tappedAnimalCell: animalCell = sender as? animalCell {
            if segue.identifier == "animalDetails" {
                guard let indexPath = tableView.indexPathForSelectedRow else {return}
                let animal = ZooAnimal.allAnimals[indexPath.section][indexPath.row]
                destination.animal = animal
                
                //let animalDetailVC: animalDetailVC = segue.destination as! animalDetailVC
                //let cellIndexPath = tableView.indexPath(for: tappedAnimalCell)
            }
        }
    override func viewDidLoad() {
        super.viewDidLoad()
       // separator()
    tableView.dataSource = self
    tableView.delegate = self
                // Do any additional setup after loading the view, typically from a nib.
            }
    

}
