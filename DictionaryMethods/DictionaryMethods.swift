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
    var starWarsHeroes:[String] = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    
    var starWarsVillains:[String] = ["Darth Vader", "Emperor Palpatine"]
    
    var starWarsDroids:[String] = ["R2-D2", "C-3P0", "IG-88", "BB-8"]

    
    // Question #4
   
    func addKyloRen() {
        
        starWarsVillains.append("Kylo Ren")
    }
    
    
    // Question #5
  
    func remove(droid:String) -> Bool {
        
        let toBeRemoved = starWarsDroids.index(of: droid)
        
        if toBeRemoved == nil {
            
            return false
            
        } else {
            
            starWarsDroids.remove(at: toBeRemoved!)
            
            return true
        }
    }
    
    
    // Question #6
   
    var starWarsCharacters:[String : [String]] = [String: [String]]()
    
    func createStarWarsCharacters() {
        
        starWarsCharacters.updateValue(starWarsHeroes, forKey: "Heroes")
        starWarsCharacters.updateValue(starWarsVillains, forKey: "Villains")
        starWarsCharacters.updateValue(starWarsDroids, forKey: "Droids")
    }
    
    
    // Question #7
    var starWarsGangsters:[String] = ["Watto", "Jabba the Hutt"]
    
    func createStarWarsGangsters() {
        
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    
    
    // Question #8
    func description(characters:[String : [String]]) -> String {
        
        var sentence = "--Star Wars Characters--"
        
        for (type, names) in characters {
            
            sentence += "\n\(type.uppercased())"
            
            for (index, name) in names.enumerated() {
                
                sentence += "\n\(index + 1). \(name)"
            }
        }
        
        return sentence
    }
    
    
    
    // Question #9
    
    func addHearts() {
        
        for (type, names) in starWarsCharacters {
            
            var updatedNames = names
            
            for (index, name) in updatedNames.enumerated() {
                
                if name.contains("o") {
                    
                    let updatedName = name.replacingOccurrences(of: "o", with: "❤️")
                    
                    updatedNames[index] = updatedName
                }
            }
            
            starWarsCharacters[type] = updatedNames
        }
    }
    
    
}
