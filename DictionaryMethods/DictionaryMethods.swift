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
    var starWarsVillains : [String] = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids : [String] = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsCharacters : [String : [String]] = [:]
    var starWarsGangsters : [String] = ["Watto", "Jabba the Hutt"]
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    // Question #5
    func remove(droid: String) -> Bool {
        var index = 0
        while index < starWarsDroids.count {
            if (starWarsDroids[index] == droid) {
                starWarsDroids.remove(at: index)
                return true
            }
            index += 1
        }
        return false
    }
    
    // Question #6
    func createStarWarsCharacters() {
        starWarsCharacters = ["Heroes" : starWarsHeroes, "Villains" : starWarsVillains, "Droids" : starWarsDroids]
    }
    
    // Question #7
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    // Question #8
    func description(characters: [String : [String]]) -> String {
        var sentence = ""
        for (group, characters) in starWarsCharacters {
            sentence += "\n\(group.uppercased())\n"
            var number = 1
            for character in characters {
                sentence += "\(number). \(character)\n"
                number += 1
            }
        }
        return sentence
    }
    
    // Question #9
    func addHearts() {
        for (group, characters) in starWarsCharacters {
            var names : [String] = []
            for character in characters {
                var name = ""
                for char in character {
                    if (char == "o") {
                        name += "❤️"
                    } else {
                        name += "\(char)"
                    }
                }
                names.append(name)
            }
            starWarsCharacters[group] = names
        }
    }
    
}
