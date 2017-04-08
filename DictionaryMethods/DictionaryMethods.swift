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
    var starWarsHeroes = ["Luke Skywalker",
    "Princess Leia",
    "Han Solo",
    "Rey"]
    
    var starWarsVillains = ["Darth Vader",
    "Emperor Palpatine"]
    
    var starWarsDroids = ["R2-D2",
    "C-3P0",
    "IG-88",
    "BB-8"]
    
    var starWarsGangsters = ["Watto",
        "Jabba the Hutt"]

    
    

    
    // Question #4
   
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    // Question #5
  
    func remove(droid: String) -> Bool {
        
        if let index = starWarsDroids.index(of: droid) {
            starWarsDroids.remove(at: index)
            return true
            }
        return false
        
    }
    
    
    // Question #6
   
    
    var starWarsCharacters: [String : [String]] = [:]
    func createStarWarsCharacters() {
        starWarsCharacters = ["Heroes":starWarsHeroes,
            "Villains":starWarsVillains,
            "Droids":starWarsDroids]
    }
    
    
    // Question #7
   
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }

    
    
    // Question #8
    
    
    func description(characters: [String : [String]]) -> String {
        var result = "--Star Wars Characters--"
        for (key, value) in characters {
            result.append("\n\(key.uppercased())\n")
            for (index, key) in value.enumerated() {
                result.append("\(index+1). \(key)")
            }
        }
        return result
        
    }
    
    // Question #9
    
    func addHearts() {
        var modifedStarWarsCharacters: [String:[String]] = [:]
            for (key,value) in starWarsCharacters {
                var newValue: [String] = []
                for name in value {
                newValue.append(name.replacingOccurrences(of: "o", with: "❤️"))
                }
                modifedStarWarsCharacters[key] = newValue
            }
        
        
        starWarsCharacters = modifedStarWarsCharacters
    }
    
    
}
