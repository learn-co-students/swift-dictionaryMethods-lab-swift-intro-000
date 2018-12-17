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
    var starWarsHeroes: [String] = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    var starWarsVillains: [String] = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids: [String] = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsGangsters: [String] = ["Watto", "Jabba the Hutt"]
    var starWarsCharacters:  [String : [String]] = [:]
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        let index = starWarsDroids.firstIndex(of: droid)
        if let index = index {
            starWarsDroids.remove(at: index)
            return true
        }
        return false
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
        var returnValue = "--Star Wars Characters--"
        for (type, names) in characters {
            returnValue += "\n\(type.uppercased())\n"
            for (num, name) in names.enumerated() {
                returnValue += "\(num + 1). \(name)\n"
            }
        }
        return returnValue
    }
    
    
    
    // Question #9
    func addHearts() {
        for (type, names) in starWarsCharacters {
            var namesArray: [String] = []
            for (_, name) in names.enumerated() {
                let newName = name.replacingOccurrences(of: "o", with: "❤️")
                namesArray.append(newName)
            }
            starWarsCharacters[type] = namesArray
        }
    }
    
    
    
}
