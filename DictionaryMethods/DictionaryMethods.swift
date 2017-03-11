//
//  DictionaryMethods.swift
//  DictionaryMethods
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryMethods {
    
    // Questions #1, #2, #3, #6 and #7
    var starWarsHeroes: [String] = [
        "Luke Skywalker",
        "Princess Leia",
        "Han Solo",
        "Rey"
        ]
    
    var starWarsDroids: [String] = [
        "R2-D2",
        "C-3P0",
        "IG-88",
        "BB-8"
    ]
    
    var starWarsCharacters: [String: [String]] = [:]
    
    func createStarWarsCharacters() {
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
    }
    
    var starWarsVillains: [String] = [
        "Darth Vader",
        "Emperor Palpatine"
    ]
    

    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        if let droidIndex = starWarsDroids.index(of: droid) {
            starWarsDroids.remove(at: droidIndex)
            return true
        }
        
        return false
    }
    
    
    
    // Question #6
   
    
    
    
    // Question #7
   
    
    
    
    // Question #8
    
    
    
    
    // Question #9
    
    
    
    
}
