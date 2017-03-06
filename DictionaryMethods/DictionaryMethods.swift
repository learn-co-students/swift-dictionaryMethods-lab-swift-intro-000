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
    
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    // Question #5
    func remove(droid: String) -> Bool {
        var result = false
        for (index, item) in starWarsDroids.enumerated() {
            if item == droid {
                starWarsDroids.remove(at: index)
                result = true
            }
        }
        return result
    }
    
    // Question #6
    var starWarsCharacters: [String : [String]] = [:]
    
    func createStarWarsCharacters() {
        starWarsCharacters.updateValue(starWarsHeroes, forKey: "Heroes")
        starWarsCharacters.updateValue(starWarsVillains, forKey: "Villains")
        starWarsCharacters.updateValue(starWarsDroids, forKey: "Droids")
    }
    
    
    // Question #7
    func createStarWarsGangsters() {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    // Question #8
    func description(character: [String : [String]]) -> String {
        var sentence = "--Star Wars Characters--\n"
        
        for slot in character {
            sentence += "\(slot.key.uppercased())\n"
            for (index, value) in slot.value.enumerated() {
                sentence += "\(index + 1). \(value)\n"
            }
        }
        
        return sentence
    }

    // Question #9
    func addHearts() {
        // ❤️
        print("❤️")
        for (type, names) in starWarsCharacters {
            var tempArray = names
            for (index, name) in tempArray.enumerated() {
                if name.contains("o") {
                    print(name)
                    tempArray[index] = name.replacingOccurrences(of: "o", with: "❤️")
                }
            }
            starWarsCharacters.updateValue(tempArray, forKey: type)
        }
        
        print(starWarsCharacters)
    }
    
    
    
}
