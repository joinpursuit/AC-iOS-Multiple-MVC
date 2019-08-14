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

    }

  

    override func numberOfSections(in tableView: UITableView) -> Int {
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
        switch indexPath.section {
        case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomZooCell", for: indexPath) as? ZooAnimalTableViewCell {
                cell.nameLabel.text = mammals[indexPath.row].name
                cell.classificationLabel.text = mammals[indexPath.row].classification
                cell.animalImage.image = UIImage(named: "\(mammals[indexPath.row].imageNumber)")
                return cell
            }
        
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomZooCell", for: indexPath) as? ZooAnimalTableViewCell {
                cell.nameLabel.text = reptiles[indexPath.row].name
                cell.classificationLabel.text = reptiles[indexPath.row].classification
                cell.animalImage.image = UIImage(named: "\(reptiles[indexPath.row].imageNumber)")
                return cell
            }
        case 2:
                if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomZooCell", for: indexPath) as? ZooAnimalTableViewCell {
                    let bird = birds[indexPath.row]
                    cell.nameLabel.text = bird.name
                    cell.classificationLabel.text = bird.classification
                    cell.animalImage.image = UIImage(named: "\(bird.imageNumber)")
                    return cell
            }
        case 3:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomZooCell", for: indexPath) as? ZooAnimalTableViewCell {
                let insect = insects[indexPath.row]
                cell.nameLabel.text = insect.name
                cell.classificationLabel.text = insect.classification
                cell.animalImage.image = UIImage(named: "\(insect.imageNumber)")
                return cell
            }
        case 4:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomZooCell", for: indexPath) as? ZooAnimalTableViewCell {
                let amphibian = amphibians[indexPath.row]
                cell.nameLabel.text = amphibian.name
                cell.classificationLabel.text = amphibian.classification
                cell.animalImage.image = UIImage(named: "\(amphibian.imageNumber)")
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

}
