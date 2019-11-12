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
    var zooAnimals: [[ZooAnimal]] = [] {
        didSet{
            tableView.reloadData()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        zooAnimals = filterAnimalsByClassification(ZooAnimal.zooAnimals)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let buttonReference = sender as? UITableViewCell, let segueReference = segue.destination as? DetailViewController else {
            return
        }
        
        segueReference.someImage = buttonReference.imageView?.image ?? UIImage()
        for i in 0..<zooAnimals.count{
           for j in 0..<zooAnimals[i].count{
                if zooAnimals[i][j].name == buttonReference.textLabel?.text{
                    segueReference.someText = zooAnimals[i][j].info
                }
            }
        }
    }

    func filterAnimalsByClassification(_ arr: [ZooAnimal]) -> [[ZooAnimal]]{
        var animalMatrix: [[ZooAnimal]] = [[],[],[],[],[]]
       // var tempArr = arr
        
        for element in arr{
            switch element.classification{
            case "Mammal":
                animalMatrix[0].append(element)
            case "Amphibian":
                animalMatrix[1].append(element)
            case "Reptile":
                animalMatrix[2].append(element)
            case "Insect":
                 animalMatrix[3].append(element)
            case "Bird":
                animalMatrix[4].append(element)
            default:
                break
            }
        }
        return animalMatrix
    }
}

extension  ViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return zooAnimals.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return zooAnimals[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let xCell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath)
        xCell.textLabel?.text = zooAnimals[indexPath.section][indexPath.row].name
        xCell.imageView?.image = UIImage(named:zooAnimals[indexPath.section][indexPath.row].imageNumber.description)
        xCell.detailTextLabel?.text = zooAnimals[indexPath.section][indexPath.row].origin
        return xCell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0:
            return "Mammal"
        case 1:
            return "Amphibian"
        case 2:
            return "Reptile"
        case 3:
            return "Insect"
        case 4:
            return "Bird"
        default:
            return ""
        }
    }
}
