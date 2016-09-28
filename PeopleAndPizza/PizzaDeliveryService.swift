//
//  PizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Jacqueline Minneman on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class PizzaDeliveryService{
    var location: Coordinate
    var pizzasAvailable: Int
    
    init(location: Coordinate){
        self.location = location
        self.pizzasAvailable = 10
    }
    
    func isInRange(destination: Coordinate) -> Bool {
        
        if destination.distanceTo(coordinate: location) <= 5000 {
            return true
        } else {
            return false
        }
    }
    
    func deliverPizzaTo(destination: Coordinate) -> Bool {
        if pizzasAvailable > 0 {
            if isInRange(destination: destination) {
                pizzasAvailable -= 1
                return true
            } else {
                return false
            }
        }
        else {
            return false
        }
    }

}
