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
    
     var starWarsCharacters: [String : [String]] = [:]
    
     var starWarsGangsters = ["Watto", "Jabba the Hutt"]

    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        if starWarsDroids.contains(droid) {
           starWarsDroids = starWarsDroids.filter({ $0 != droid })
            return true
            } else {
            return false
        }
    }
    
    
    
    // Question #6
    
    func createStarWarsCharacters() {
            starWarsCharacters["Heroes"] = starWarsHeroes
            starWarsCharacters["Villians"] = starWarsVillains
            starWarsCharacters["Droids"] = starWarsDroids
        }
    }
    
    
    
    // Question #7
    func createStarWarsGangsters() {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    
    
    // Question #8
    func description(characters: [String : [String]]) -> String {
        var sentence = "--STAR WARS CHARACTERS--"
        
        for (type, names) in characters {
            sentence += "\n"
            sentence += "\(type.uppercased())"
            
        for (number, value) in names.enumerated() {
            sentence += "\n"
            sentence += "\(number + 1). \(value)"
        }
    }
        return sentence
        
    }
    
    
    
    // Question #9
    func addHearts() {
        for (type, names) in starWarsCharacters {
            var hearts = names
            
            for (index, value) in names.enumerated() {
                if value.contains("o") {
                    let heartsName = value.replacingOccurrences(of: "o", with: "❤️")
                    
                     hearts[index] = heartsName
                }
            }
          starWarsCharacters[type] = hearts
        }
    }
    
    
    
}
