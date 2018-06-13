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
    
    var starWarsCharacters: [String: [String]] = [:]
    
    func addKyloRen(){
        starWarsVillains.append("Kylo Ren")
    }

    
    // Question #4
   
    
    
    
    // Question #5
  
    func remove(droid: String) -> Bool {
        if let droidx = starWarsDroids.index(of: droid){
            starWarsDroids.remove(at: droidx)
            return true
        }else {
            return false
        }
        
    }
    
    
    // Question #6
   
    func createStarWarsCharacters(){
        starWarsCharacters = ["Heroes": starWarsHeroes,
                              "Villains": starWarsVillains,
                              "Droids": starWarsDroids]
        
    }
    
    
    // Question #7
    func createStarWarsGangsters(){
        starWarsCharacters["Gangsters"] = starWarsGangsters
        
    }
    
    
    
    // Question #8
    func description(characters: [String: [String]]) -> String {
        var sentence = "--Star Wars Charaters--"
        
        for (keys, values) in characters {
            sentence += "\n\(keys.uppercased())\n"
            for (index, names) in values.enumerated() {
            sentence += "\n\(index + 1). \(names)"
            }
        }
        return sentence
    }
    
    // Question #9
    func addHearts(){
        for (type, names) in starWarsCharacters {
            for (hello, name) in names.enumerated() {
                starWarsCharacters[type]![hello] = name.replacingOccurrences(of: "o", with: "♥️")
            }
        }
    }
    
    
    
}
