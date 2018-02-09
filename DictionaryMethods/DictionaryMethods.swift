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
    var starWarsVillains:[String] = ["Darth Vader","Emperor Palpatine"]
    var starWarsDroids:[String] = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsGangsters:[String] = ["Watto","Jabba the Hutt"]
    var starWarsCharacters:[String:[String]] = [:]
    
    func createStarWarsCharacters() {
        let keys = ["Heroes","Villains","Droids"]
        let values = [starWarsHeroes,starWarsVillains,starWarsDroids]
        for (index,key) in keys.enumerated() {
            starWarsCharacters[key] = values[index]
        }
    }
    
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        if starWarsDroids.contains(droid) {
            for (index,robot) in starWarsDroids.enumerated() {
                if droid == robot {
                    starWarsDroids.remove(at: index)
                    return true
                }
            }
        }
        return false
    }
    
    
    
    // Question #6
   
    
    
    
    // Question #7
   
    
    
    
    // Question #8
    func description(characters:[String:[String]]) -> String {
        var sentence:String = "--Star Wars Characters--"
        
        for (type, names) in characters {
            sentence += "\n\(type.uppercased())"
            for (index,name) in names.enumerated() {
                sentence += "\n\(index+1). \(name)"
            }
        }
        return sentence
    }
    
    // Question #9
    func addHearts() {
        
        for (type, names) in starWarsCharacters {
            var namesArray:[String] = []
            for (index,name) in names.enumerated() {
                let newName = name.replacingOccurrences(of: "o", with: "❤️")
                //namesArray[index] = newName
                namesArray.append(newName)
            }
            starWarsCharacters[type] = namesArray
        }
    }
    
    
    
}
