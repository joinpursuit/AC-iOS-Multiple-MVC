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
    
    private let animals = ZooAnimal.zooAnimals
    
    private var groupedAnimalsKey: [String] {
        Dictionary(grouping: animals, by: {$0.classification})
            .sorted(by: {$0.key < $1.key})
            .map({$0.key})
    }
    
    private var groupedAnimals: [[ZooAnimal]] {
        Dictionary(grouping: animals, by: {$0.classification})
            .sorted(by: {$0.key < $1.key})
            .map {$0.value}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? DetailViewController {
            destVC.animal = groupedAnimals[tableView.indexPathForSelectedRow!.section][tableView.indexPathForSelectedRow!.row]
        }
    }
    
    private func configureView() {
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {}
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return groupedAnimalsKey[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return groupedAnimals.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupedAnimals[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Animal Cell", for: indexPath) as? AnimalTableViewCell else {
            print("Error occured creating cell.")
            return UITableViewCell()
        }
        let animal = groupedAnimals[indexPath.section][indexPath.row]
        cell.animalTitleLabel.text = animal.name
        cell.animalLocationLabel.text = animal.origin
        cell.animalImageView.image = UIImage(named: String(animal.imageNumber))
        return cell
        
    }
}
