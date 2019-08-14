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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allAnimals.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 160
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? animalCell {
            cell.animalName.text = allAnimals[indexPath.row].name
            cell.animalImage.image = UIImage(named: String( allAnimals[indexPath.row].imageNumber))
            cell.animalOrigin.text = allAnimals[indexPath.row].origin
            return cell
        }

            return UITableViewCell()
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as?  animalDetailVC else {return}
     //   if let tappedAnimalCell: animalCell = sender as? animalCell {
            if segue.identifier == "animalDetails" {
                guard let indexPath = tableView.indexPathForSelectedRow else {return}
                let animal = ZooAnimal.zooAnimals[indexPath.row]
                destination.animal = animal
                
                //let animalDetailVC: animalDetailVC = segue.destination as! animalDetailVC
                //let cellIndexPath = tableView.indexPath(for: tappedAnimalCell)
            }
        }
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? animalCell {
//            cell.animalName.text = allAnimals[indexPath.row].name
//            cell.animalImage.image = UIImage(named: String( allAnimals[indexPath.row].imageNumber))
//            cell.animalOrigin.text = allAnimals[indexPath.row].origin
//            return cell
//        }
//
//        return UITableViewCell()
//    }
//            // 5. Copy most of this code from cellForRow
//                    var cellMovie: Movie!
//                    if cellIndexPath.section == 0 {
//                        let actionMovies = self.filterMovies(for: .action)
//                        cellMovie = actionMovies[cellIndexPath.row]
//                    }
//                    else if cellIndexPath.section == 1 {
//                        let animatedMovies = self.filterMovies(for: .animation)
//                        cellMovie = animatedMovies[cellIndexPath.row]
//                    }
//                    else {
//                        let dramaticMovies = self.filterMovies(for: .drama)
//                        cellMovie = dramaticMovies[cellIndexPath.row]
//                    }
//
//                    // 6. set the destination MovieDetailViewController's selectedMovie property
//                    movieDetailViewController.selectedMovie = cellMovie
//
//                    // 7. Set the properties of the MovieDetailViewController
//                    //        movieDetailViewController.moviePosterImageView.image = UIImage(named: cellMovie.poster)
//                    //        movieDetailViewController.genreLabel.text = "Genre: " + cellMovie.genre.capitalized
//                    //        movieDetailViewController.locationLabel.text = "Locations: " + cellMovie.locations.joined(separator: ", ")
//                    //        movieDetailViewController.summaryFullTextLabel.text = cellMovie.summary
//                }
//            }
//        }
    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }



