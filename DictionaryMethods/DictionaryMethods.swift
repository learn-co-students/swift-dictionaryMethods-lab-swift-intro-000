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
    var starWarsCharacters: [String: [String]] = [:]
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }

    
    // Question #5
    func remove(droid: String) -> Bool {
        if let index = starWarsDroids.index(of: droid) {
            starWarsDroids.remove(at: index)
            return true
        } else {
            return false
        }
    }
    
    
    // Question #6
    func createStarWarsCharacters() {
        starWarsCharacters = [
            "Heroes": starWarsHeroes,
            "Villains": starWarsVillains,
            "Droids": starWarsDroids
        ]
    }
    
    
    // Question #7
    func createStarWarsGangsters() {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    
    
    // Question #8
    
    func description(characters: [String: [String]]) -> String {
        //var keys = Array(characters.keys)
        //var values = Array(characters.values)
        
        var sentence = "--Star Wars Characters--\n"
        
        for (type, names) in characters {
            let category = type.uppercased()
            sentence.append("\(category)\n")
            
            for (index, character) in names.enumerated() {
                sentence.append("\(index + 1). \(character)\n")
            }
        }
        return sentence
    }
    
    
    // Question #9
    func addHearts() {
        for (type, names) in starWarsCharacters {
            var heartNames: [String] = []
            for (index, name) in names.enumerated() {
                var heartName: String = ""
                var letters = Array(name.characters)
                var newLetters: [Character] = []
                
                for (index, char) in letters.enumerated() {
                    var letter = char
                    if char == "o" {
                        letter = "❤️"
                    }
                    newLetters.append(letter)
                }
                heartName = String(newLetters)
                heartNames.append(heartName)
            }
            starWarsCharacters.updateValue(heartNames, forKey: type)
        }
        //print(starWarsCharacters)
    }
    
    
    
}
