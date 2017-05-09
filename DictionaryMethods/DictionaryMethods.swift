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
    var starWarsVillains = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsGangsters = ["Watto", "Jabba The Hut"]
    
    var starWarsCharacters: [String : [String]] = [:]
    // Question #4
    
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    
    func remove(droid: String) -> Bool {
       
        for (index,value) in starWarsDroids.enumerated() {
            if value == droid {
                starWarsDroids.remove(at: index)
                return true
            }
        }
        return false
    }
    
    
    
    // Question #6
   
    func createStarWarsCharacters() {
        starWarsCharacters = [
            "Heroes" : starWarsHeroes,
            "Villains" : starWarsVillains,
            "Droids" : starWarsDroids]
    }
    
    
    // Question #7
   
    func createStarWarsGangsters() {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    
    // Question #8
    
    func description(characters: [String : [String]]) -> String {
        var description = "--Star Wars Characters--\n"
        
        for (key, value) in characters {
            
            description += "\(key.uppercased())\n"
            for (i,v) in value.enumerated() {
                description += "\(i+1). \(v)\n"
                
            }
        }
        
        return description
    }
    
    
    // Question #9
    
    func addHearts() {
        
        for (type, names) in starWarsCharacters {
            var newNames = names
            
            for (key, value) in newNames.enumerated() {
                
                if value.contains("o") {
                    let newValue = value.replacingOccurrences(of: "o", with: "❤️")
                    newNames[key] = newValue
                }
                
            }
            
            starWarsCharacters[type] = newNames
        }
        
        
    }
    
    
}
