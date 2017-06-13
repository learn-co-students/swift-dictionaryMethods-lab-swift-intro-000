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
    
    var starWarsHeroes: [String] = ["Luke Skywalker",
                                    "Princess Leia",
                                    "Han Solo",
                                    "Rey"
    ]
    
    var starWarsVillains: [String] = ["Darth Vader",
                                      "Emperor Palpatine"
    ]
    
    var starWarsDroids: [String] = ["R2-D2",
                                    "C-3P0",
                                    "IG-88",
                                    "BB-8"
    ]
    
    var starWarsCharacters: [String : [String]] = [:]
    
    var starWarsGangsters: [String] = ["Watto",
                                       "Jabba the Hutt"
    ]
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        for (index,starWarsDroid) in starWarsDroids.enumerated() {
            if droid == starWarsDroid {
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
    
    func description(characters: [String : [String]]) -> String {
        var sentence: String = "--Star Wars Characters--"
        for (group, names) in characters {
            sentence += "\n\(group.uppercased())\n"
            for (index, name) in names.enumerated() {
                sentence += "\(index+1). \(name)\n"
            }
        }
        return sentence
    }
    
    func addHearts() {
        for (type, names) in starWarsCharacters {
            var namesWithHearts: [String] = names
            for (index, name) in names.enumerated() {
                let nameWithHearts = name.replacingOccurrences(of: "o", with: "❤️")
                namesWithHearts[index] = nameWithHearts
            }
            starWarsCharacters.updateValue(namesWithHearts, forKey: type)
        }
    }
    
    
    // Question #9
    
    
    
    
}
