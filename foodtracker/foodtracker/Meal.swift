//
//  Meal.swift
//  foodtracker
//
//  Created by anhxa100 on 9/1/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class Meal {
    var name: String
    var photo: UIImage?
    var rating: Int
    
    
    //MARK: Init
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        guard name.isEmpty else {
            return nil
        }
        
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        
    }
    
    
}
