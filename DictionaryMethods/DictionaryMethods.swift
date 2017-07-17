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
    
    var starWarsHeroes: [String] = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    var starWarsVillains: [String] = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids: [String] = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsGangsters: [String] = ["Watto", "Jabba the Hutt"]
    var starWarsCharacters = [String:[String]]()
    
    
    // Question #4
   
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    // Question #5
  
    func remove(droid: String) -> Bool {
        
        var index = 0
        var boolReturn = true
        
        
        for droidName in starWarsDroids {
            
            if droid == droidName {
                starWarsDroids.remove(at: index)
                boolReturn = true
                return boolReturn
            } else {
                boolReturn = false
                index += 1
                return boolReturn
            }
            
        }

        return boolReturn

    }

    
    
    
    // Question #6
   
    func createStarWarsCharacters() {
        starWarsCharacters.updateValue(starWarsHeroes, forKey: "Heroes")
        starWarsCharacters.updateValue(starWarsVillains, forKey: "Villains")
        starWarsCharacters.updateValue(starWarsDroids, forKey: "Droids")
    }
    
    
    // Question #7
   
    func createStarWarsGangsters() {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    
    // Question #8
    
    func description(characters: [String:[String]]) -> String {
        var sentence = "--Star Wars Chararcters--"
        
        for (type, names) in characters {
            sentence += "\n\(type.uppercased())\n"
            
            for (index, names) in names.enumerated() {
                sentence += "\n\(index+1). \(names)\n"
            }
            
        }
        
        return sentence
        
    }
    
    
    // Question #9
    
    func addHearts() {
        for (_, names) in starWarsCharacters {
            
        }
    }
    
    
}
