//
//  Person.swift
//  PeopleAndPizza
//
//  Created by Jacqueline Minneman on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    var firstName: String
    var lastName: String
    var home: Coordinate
    var isHungry: Bool
    
    init(firstName: String, lastName: String, home:Coordinate){
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
        self.isHungry = true
    }
    //If the person is hungry and the service is in range of the person's home, then the isHungry property should be set to false and the method should return true. If the person is not hungry or the service is not in range of the person's home, the method should simply return false.
    
    func eatPizzaFrom(service: PizzaDeliveryService) -> Bool {
        if isHungry == true && service.isInRange(destination: home) {
            isHungry = false
            return true
        } else {
            return false
        }
    }

}
