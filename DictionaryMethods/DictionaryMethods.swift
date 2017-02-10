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
     var starWarsHeroes = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    
     var starWarsVillians = ["Darth Vader", "Emporer Palpatine"]
    
     var starWarsDroids = ["R2-D2", "C-3PO", "IG-88", "BB-8"]
    
     var starWarsGangsters = ["Watto", "Jabba the Hutt"]

    
    // Question #4
    func addKyloRen() {
        starWarsVillians.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        if starWarsDroids.contains(droid) {
           starWarsDroids = starWarsDroids.filter() { $0 != droid }
            return true
            } else {
            return false
        }
    }
    
    
    
    // Question #6
    var starWarsCharacters: [String : [String]]
    
    func createStarWarsCharacters() {
        if starWarsCharacters.isEmpty {
            starWarsCharacters.append["Heroes" : [starWarsHeroes], "Villians" : [starWarsVillians], "Droids" : [starWarsDroids]]
        }
    }
    
    
    
    // Question #7
    func createStarWarsGangsters() {
        
    }
    
    
    
    // Question #8
    func description(characters: [String : [String]]) -> String {
        var sentence = "--STAR WARS CHARACTERS--"
        
        for (type, names) in characters {
            sentence += "\n\(type.uppercased())\n"
        }
        for names in characters {
            
        }
    }
    
    
    
    // Question #9
    func addHearts() {
        
    }
    
    
    
}
