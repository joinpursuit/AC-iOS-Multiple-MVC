//
//  ViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Tom Seymour on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class ZooAnimalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var zooAnimals = [ZooAnimal]()
    @IBOutlet weak var animalTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        self.animalTableView.rowHeight = UITableViewAutomaticDimension
        self.animalTableView.estimatedRowHeight = 200
        // Do any additional setup after loading the view, typically from a nib.
        animalTableView.delegate = self
        animalTableView.dataSource = self
    }
    func loadData() {
        self.zooAnimals = ZooAnimal.zooAnimals
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.zooAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Animal Cell", for: indexPath)
        //Configure the cell...
        if let safeCell = cell as? ZooAnimalTabelViewCell {
                safeCell.animalNameLabel.text = zooAnimals[indexPath.row].name
            safeCell.animalRiginLabel.text = zooAnimals[indexPath.row].classification + " " + zooAnimals[indexPath.row].origin
            safeCell.animalImageView.image = UIImage(named: String(zooAnimals[indexPath.row].imageNumber))
      //  cell.detailTextLabel?.text = zooAnimals[indexPath.row].classification + " " + zooAnimals[indexPath.row].origin
       // cell.imageView?.image =  UIImage(named: String(zooAnimals[indexPath.row].imageNumber))
        return safeCell
    }
      return UITableViewCell()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? ZooAnimalDetailViewController {
            let selectedRow = animalTableView.indexPathForSelectedRow!.row
           destination.animal = self.zooAnimals[selectedRow]
        
    }
    }
    
    
    
    
    
    
    



}

