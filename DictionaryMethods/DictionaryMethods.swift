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
    

    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        if let droidIndex = starWarsDroids.index(of: droid){
            starWarsDroids.remove(at: droidIndex)
            return true
        } else {
            return false
        }
    }
  
  
    
    
    
    
    
    // Question #6
    
    var starWarsCharacters: [String: [String]] = ["":[""]]
    
  
    
    func createStarWarsCharacters() {
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
    }
   
    
    
    
    // Question #7
    
    var starWarsGangsters: [String] = ["Watto", "Jabba the Hutt"]
    
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
   
    
    
    
    // Question #8
    
    func description(characters: [String: [String]]) -> String {
        var sentence = "--Star Wars Characters--"
        for (type, names) in characters {
            sentence += "\n\(type.uppercased())\n"
            for (index, character) in names.enumerated() {
                sentence += "\n\(index + 1). \(character)"
            }
        }
        return sentence
    }
    
    
    
    
    // Question #9
    
    func addHearts() {
        for (type, names) in starWarsCharacters {
            for name in names {
                if name.contains("o") {
                    name.replacingOccurrences(of: "o", with: "❤️")
                }
            }
        }
    }
    
    
    
    
}

