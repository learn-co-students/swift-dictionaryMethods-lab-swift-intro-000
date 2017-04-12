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
    
    var starWarsVillains = ["Darth Vader", "Emperor Palpatine"]
    
    var starWarsDroids = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    
    var starWarsGangsters = ["Watto", "Jabba the Hut"]
    
    var starWarsCharacters : [String : [String]] = [:]

    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        for (index, droid1) in starWarsDroids.enumerated() {
            if droid1 == droid {
                starWarsDroids.remove(at: index)
                return true
            }
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
    func description(characters : [String : [String]]) -> String {
        var starWarsCharacters = "--Star Wars Characters--\n"
        for (key, value) in characters {
            starWarsCharacters.append("\(key.uppercased())\n")
            for (index, character) in value.enumerated() {
                starWarsCharacters.append("\(index + 1). \(character)\n")
            }
        }
        return starWarsCharacters
    }
    
    
    
    // Question #9
    func addHearts() {
        for (type, names) in starWarsCharacters {
            var newArray : [String] = []
            for (index, name) in  names.enumerated() {
                var newName = name.replacingOccurrences(of: "o", with: "❤️")
                newArray.append(newName)
            }
            starWarsCharacters[type] = newArray
        }
    }
    
    
    
}
