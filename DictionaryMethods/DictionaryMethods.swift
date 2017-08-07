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
    var starWarsHeroes = [
        "Luke Skywalker",
        "Princess Leia",
        "Han Solo",
        "Rey"
    ]
    
    var starWarsVillains = [
        "Darth Vader",
        "Emperor Palpatine"
    ]
    
    var starWarsDroids = [
        "R2-D2",
        "C-3P0",
        "IG-88",
        "BB-8"
    ]
    
    var starWarsGangsters = [
        "Watto",
        "Jabba the Hutt"
    ]
    
    func createStarWarsGangsters() {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    var starWarsCharacters = [String: [String]]()
    
    func createStarWarsCharacters() {
        starWarsCharacters.updateValue(starWarsHeroes, forKey: "Heroes")
        starWarsCharacters.updateValue(starWarsVillains, forKey: "Villains")
        starWarsCharacters.updateValue(starWarsDroids, forKey: "Droids")
    }

    
    // Question #4
   
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
  
    func remove(droid: String) -> Bool {
        if starWarsDroids[0] == droid {
            starWarsDroids.remove(at: 0)
            return true
        } else if starWarsDroids[1] == droid {
            starWarsDroids.remove(at: 1)
            return true
        } else if starWarsDroids[2] == droid {
            starWarsDroids.remove(at: 2)
            return true
        } else if starWarsDroids[3] == droid {
            starWarsDroids.remove(at: 3)
            return true
        } else {
            return false
        }
    }
    
    
    
    // Question #6
   
    
    
    
    
    // Question #7
   
    
    
    
    // Question #8
    
    func description(characters: [String: [String]]) -> String {
        var sentence = "-Star Wars Characters-"
        for (type, names) in characters {
            sentence += "\n\(type.uppercased())\n"
            for (index, (name)) in names.enumerated() {
                sentence += "\n\(index + 1). \(name)\n"
            }
        }
        return sentence
    }
    
    // Question #9
    func addHearts() {
        for (index, names) in starWarsCharacters {
            for name in names {
                var newName = String()
                if name.contains("o") {
                    newName = name.replacingOccurrences(of: "o", with: "❤️")
                }
            starWarsCharacters[index] = [newName]
            }
        }
    }
    
    
    
}
