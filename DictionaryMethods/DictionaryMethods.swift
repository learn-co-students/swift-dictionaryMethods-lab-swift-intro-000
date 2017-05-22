//
//  DictionaryMethods.swift
//  DictionaryMethods
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryMethods {
    
    var starWarsHeroes = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    var starWarsVillains = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    var starWarsCharacters = [String: [String]]()
    
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    func remove(droid: String) -> Bool {
        if let index = starWarsDroids.index(of: droid) {
            starWarsDroids.remove(at: index)
            return true
        } else {
            return false
        }
    }
    
    func createStarWarsCharacters() {
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
    }
    
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    func description(characters: [String: [String]]) -> String {
        var string = "--Star Wars Characters--"
        
        for (key, value) in characters {
            string += "\n\(key.uppercased())"
            for (index, name) in value.enumerated() {
                string += "\n\(index + 1). \(name)"
            }
        }
        
        return string
    }
    
    func addHearts() {
        for (key, values) in starWarsCharacters {
            for (index, name) in values.enumerated() {
                let newString = name.replacingOccurrences(of: "o", with: "❤️")
                starWarsCharacters[key]?[index] = newString
            }
        }
    }
}
