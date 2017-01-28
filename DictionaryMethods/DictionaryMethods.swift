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
    
    var starWarsDroids = [ "R2-D2", "C-3P0", "IG-88", "BB-8"]
    
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    
    var starWarsCharacters: [String: [String]] = [:]
    
  
   
    

    
    // Question #4
    func addKyloRen() {
    starWarsVillains.append("Kylo Ren")
    }
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        
        switch droid {
        
        case "R2-D2":
            starWarsDroids.remove(at: 0)
        case "C-3P0":
            starWarsDroids.remove(at: 1)
        case "IG-88":
            starWarsDroids.remove(at: 2)
        case "BB-8":
            starWarsDroids.remove(at: 3)
        default:
            return false
        }
        return true
    }
    


    
    // Question #6
    func createStarWarsCharacters() {
        starWarsCharacters ["Heroes"] = starWarsHeroes
        starWarsCharacters ["Villains"] = starWarsVillains
        starWarsCharacters ["Droids"] = starWarsDroids
    }
    
    
    
    // Question #7
   func createStarWarsGangsters () {
        starWarsCharacters ["Gangsters"] = starWarsGangsters
    }
    
    
    // Question #8
    func description(characters: [String: [String]]) -> String {
        var sentence = "-Movie List-"
        
        for (type,names) in characters {
            (sentence += "\n\(type.uppercased())\n")
        
        for (index,value) in names.enumerated() { sentence += "\n\(index + 1). \(value)"
            }
        }
        
        return sentence
    }
    
    
    // Question #9
    func addHearts() {
        for (type, names) in starWarsCharacters {
            var newNames = names
            
            for (index, name) in newNames.enumerated() {
                if name.contains("o") {
                    let newName = name.replacingOccurrences(of: "o", with: "♥️")
                    newNames[index] = newName
                }
            }
            starWarsCharacters[type] = newNames
        }
    }
    

}
