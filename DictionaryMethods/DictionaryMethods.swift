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
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    var starWarsCharacters: [String:[String]] = [:]
    
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    func remove(droid: String) -> Bool {
        
        let index = starWarsDroids.index(of: droid)
        
        if let index = index {
            starWarsDroids.remove(at: index)
            return true
        }
        else {
            return false
        }
    
    }
    
    func createStarWarsCharacters() {
        starWarsCharacters.updateValue(starWarsHeroes, forKey: "Heroes")
        starWarsCharacters.updateValue(starWarsVillains, forKey: "Villains")
        starWarsCharacters.updateValue(starWarsDroids, forKey: "Droids")
    }

    func createStarWarsGangsters() {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    
    // Question #4
   
    
    
    
    // Question #5
  
    
    
    
    // Question #6
   
    
    
    
    // Question #7
   
    
    
    
    // Question #8
    
    
    func description(characters: [String: [String]]) -> String {
        var description = "--Star Wars Characters--"
        
        for (type, characters) in starWarsCharacters {
            
            description = "\(description)\n\(type.uppercased())"
            
            for (index, character) in characters.enumerated() {
                description = "\(description)\n\(index + 1). \(character)"
            }
            
        }
        
        print(description)
        return description
    }
    
    
    
    // Question #9
    func addHearts() {
        
        for (type, names) in starWarsCharacters {
            
            var newList: [String] = []
            
            for name in names {
                
                let newName = name.replacingOccurrences(of: "o", with: "❤️")
                print(newName)
                newList.append(newName)
                
            }
            
            starWarsCharacters[type] = newList
            
        }
        
    }
    
    
    
}
