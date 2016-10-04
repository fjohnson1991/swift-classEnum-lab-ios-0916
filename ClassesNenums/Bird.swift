//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed : Int {
    
    case slow
    case medium
    case fast
    
    func isFaster(thanSpeed speed: Speed) -> Bool {
        
        if self.rawValue > speed.rawValue || speed.rawValue == self.rawValue {
            
            return true
        }
        
        return false
    }
}

enum Diet {
    
    case meatEater
    case vegetarian
}

enum Sex {
    
    case male
    case female
}


class Trex {
    
    var speed = Speed.fast
    let diet = Diet.meatEater
    var isAlive: Bool = true
    let name: String
    let sex: Sex
    
    init(name: String, sex: Sex) {
        
        self.name = name
        self.sex = sex
        
    }
    
    
    func speak() -> String {
        
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    
    func isFaster(thanTrex trex:Trex) -> Bool {

        return speed.isFaster(thanSpeed: trex.speed)
            
    }
    
    func eat(otherTrex trex: Trex) {
        
        if speed.isFaster(thanSpeed: trex.speed) {
            
            trex.isAlive = false
        }
        
    }
    
    
    
    
}

