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
    
    var starWarsCharacters: Dictionary<String, [String]> = [:]
    
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    // Question #5
    func remove(droid: String) -> Bool {
        if let i = starWarsDroids.index(of: droid) {
            starWarsDroids.remove(at: i)
            return true
        } else {
            return false
        }
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
    
    func description(characters: [String: [String]]) -> String {
        var sentence: String = "--Star Wars Characters--"
        
        for (type, names) in characters {
            sentence += "\n\(type.uppercased())\n"
            for (index, name) in names.enumerated() {
                sentence += "\(index + 1). \(name)"
            }
        }
        return sentence
    }
    
    
    // Question #9
    
    func addHearts() {
        
        for (type, names) in starWarsCharacters {
            var newArray: [String] = []
            for name in names {
                let newName = name.replacingOccurrences(of: "o", with: "❤️")
                newArray.append(newName)
            }
            starWarsCharacters[type] = newArray
        }
    }
}
