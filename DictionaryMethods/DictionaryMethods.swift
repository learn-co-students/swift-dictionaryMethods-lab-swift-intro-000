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
    
    var starWarsHeroes : [String] = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    var starWarsVillains : [String] = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids : [String] = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsCharacters : [String:[String]] = [:]
    var starWarsGangsters : [String] = ["Watto", "Jabba the Hutt"]
    
    // Question #4
   
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    // Question #5
  
    func remove(droid:String) -> Bool {
        for (index, name) in starWarsDroids.enumerated() {
            if name == droid {
            starWarsDroids.remove(at: index)
           return true
        }
        }
            return false
        
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
    func description(characters:[String:[String]]) -> String {
        
        var result = "--Star Wars Characters--"
        
        for (type, characters) in starWarsCharacters{
            result += "\n\(type.uppercased())"
            
        for (index, name) in characters.enumerated() {
            result += "\n\(index+1). \(name)"
        }
            
        }
        return result
    }
    
    
    
    
    // Question #9
    
    func addHearts() {
        for (type, names) in starWarsCharacters {
            
            var namesWithLove = names
            
            for (index, name) in names.enumerated(){
                namesWithLove[index] = name.replacingOccurrences(of: "o", with: "❤️")
            }
            
            starWarsCharacters.updateValue(namesWithLove, forKey: type)
        }
        
        
    }
    
    
}
