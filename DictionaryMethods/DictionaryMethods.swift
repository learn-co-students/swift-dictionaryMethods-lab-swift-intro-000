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
                          "Rey"
    ]
    var starWarsVillains = ["Darth Vader",
                            "Emperor Palpatine"
    ]
    var starWarsGangsters = ["Watto",
                             "Jabba the Hutt"
    ]
    var starWarsDroids = ["R2-D2",
                          "C-3P0",
                          "IG-88",
                          "BB-8"
    ]
    
    var starWarsCharacters: [String: [String]] = [:]

    
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
        starWarsCharacters = ["Heroes": starWarsHeroes,
                            "Villains": starWarsVillains,
                              "Droids": starWarsDroids
        ]
    }
    
    
    
    // Question #7
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    
    // Question #8
    func description(characters: [String: [String]]) -> String {
        var starWarsCharactersDescription = ""
        
        for (characterType, starWarsCharacterNames) in characters {
            starWarsCharactersDescription.append("\(characterType.uppercased())\n")
            
            for (index, characterName) in starWarsCharacterNames.enumerated() {
                starWarsCharactersDescription.append("\(index + 1). \(characterName)\n")
            }
        }
        return starWarsCharactersDescription
    }
    
    
    
    // Question #9
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
}
