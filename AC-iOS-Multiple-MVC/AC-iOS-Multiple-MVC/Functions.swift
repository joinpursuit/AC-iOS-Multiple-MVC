//
//  File.swift
//  AC-iOS-Multiple-MVC
//
//  Created by EricM on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import Foundation
import UIKit

class Functions{
    
    func rows(_ a: Int) -> Int{
        switch a{
        case 0:
            return ZooAnimal.amphibian.count
        case 1:
            return ZooAnimal.bird.count
        case 2:
            return ZooAnimal.insect.count
        case 3:
            return ZooAnimal.mammal.count
        case 4:
            return ZooAnimal.reptile.count
        default:
            return 0
        }
    }
    
    func title(_ a: Int) -> String? {
        switch a{
        case 0:
            return "Amphibian"
        case 1:
            return "Bird"
        case 2:
            return "Insect"
        case 3:
            return "Mammal"
        case 4:
            return "Reptile"
        default:
            return "not in the zoo"
        }
    }
}
