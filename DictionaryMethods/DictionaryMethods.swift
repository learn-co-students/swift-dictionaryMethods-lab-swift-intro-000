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
    
    var starWarsDroids = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    
    var starWarsVillains = ["Darth Vader", "Emperor Palpatine"]
    
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    
    
    var starWarsCharacters: [String : [String]] = [:]
    

    
    // Question #4
   
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    // Question #5
  
    func remove(droid: String) -> Bool {
        
        var droidFound = true
        
        if let index = starWarsDroids.index(of: droid) {
            starWarsDroids.remove(at: index)
            droidFound = true
        } else {
            droidFound = false
        }
        return droidFound
    }
    
    
    // Question #6
   
    func createStarWarsCharacters() {
        
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
        
    }
    
    
    // Question #7
   
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    // Question #8
    
    func description(characters: [String : [String]]) -> String {
        var charactersDescription = "--Star Wars Characters--"
        
        for (characterType, names) in characters {
            charactersDescription += "\n"
            charactersDescription += characterType.uppercased()
            
            for (index, name) in names.enumerated() {
                charactersDescription += "\n"
                charactersDescription += "\(index + 1). \(name)"
            }

        }
        
        return charactersDescription
    }
    
    
    // Question #9
    
    func addHearts() {
        for (characterType, names) in starWarsCharacters {
            var newNames = names
            
            for (index, name) in newNames.enumerated() {
                if name.contains("o") {
                
                var newName = name.replacingOccurrences(of: "o", with: "♥️")
                    newNames[index] = newName
                }
            }
            starWarsCharacters[characterType] = newNames
        }
    }
    
    
}
