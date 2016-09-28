//
//  Coordinate.swift
//  PeopleAndPizza
//
//  Created by Jacqueline Minneman on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Coordinate {
    var latitude: Double
    var longitude: Double
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    var isInNorthernHemisphere: Bool {
        if latitude > 0 {
            return true
        } else {
            return false
        }
    }
    
    var isInSoutherHemisphere: Bool {
        if latitude < 0 {
            return true
        } else {
            return false
        }
    }
    
    var isInWesternHemisphere: Bool {
        if longitude > 0 {
            return true
        } else {
            return false
        }
    }
    
    var isInEasternHemisphere: Bool {
        if longitude < 0 {
            return true
        } else {
            return false
        }
    }
    
    func distanceTo(coordinate: Coordinate) -> Double {
       return acos(sin(latitude.radians) * sin(latitude.radians) + cos(latitude.radians) * cos(latitude.radians) * cos(latitude.radians-latitude.radians)) * 6371000 / 1000
    }
    
    
    
}

extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}
