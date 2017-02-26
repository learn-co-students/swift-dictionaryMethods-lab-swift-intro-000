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

    var starWarsCharacters:[String:[String]] = [:]
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid:String) -> Bool {
        let index = starWarsDroids.index(of: droid)
        if let i = index {
            starWarsDroids.remove(at: i)
            return true
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
        var output = "--Star Wars Characters--"
        for (key,item) in characters {
            output += "\n"
            output += key.uppercased()
            for (index,item) in item.enumerated() {
                output += "\n"
                output += "\(index+1). \(item)"
            }
        }
        
        return output
    }
    
    
    
    // Question #9
    func addHearts() {
        for (key,item) in starWarsCharacters {
            var newItem = [""]
            for item in item {
                newItem.append(item.replacingOccurrences(of: "o", with: "♥️"))
            }
            starWarsCharacters.updateValue(newItem, forKey: key)
        }
    }
    
    
    
}
