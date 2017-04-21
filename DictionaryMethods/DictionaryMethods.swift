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
        var index: Int?
        for i in 0...(starWarsDroids.count-1) {
            if starWarsDroids[i] == droid {
                index = i
            }
        }
        if let index = index {
            starWarsDroids.remove(at: index)
            return true
        } else {
            return false
        }
    }
    
    
    // Question #6
   
    var starWarsCharacters: [String: [String]] = [:]
    
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
        var sentence: String = "--Star Wars Characters--"
        
        for (key, value) in characters {
            sentence += "\n" + key.uppercased() + "\n"
            for (index, name) in value.enumerated() {
                sentence += String(index+1) + ". " + name + "\n"
            }
        }
        return sentence
    }
    
    
    // Question #9
    
    func addHearts() {
        for (type, names) in starWarsCharacters {
            for (index, name) in names.enumerated() {
                let newname = name.replacingOccurrences(of: "o", with: "❤️")
                starWarsCharacters[type]?[index] = newname
            }
        }
    }
    
    
}
