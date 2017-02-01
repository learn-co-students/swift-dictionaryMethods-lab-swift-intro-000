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
    
    var starWarsDroids = ["R2-D2",
                          "C-3P0",
                          "IG-88",
                          "BB-8"]
    
    var starWarsGangsters = ["Watto",
                             "Jabba the Hutt"]
    
    var starWarsCharacters = [String:[String]]()
    
    var starWarsVillains = ["Darth Vader",
                            "Emperor Palpatine"]
    
    
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
        var sentence = "--Star Wars Characters--"
        
        for (type, names) in characters {
            sentence += "\n\(type.uppercased())\n"
            for (i, name) in names.enumerated() {
                sentence.append("\n\(i+1). \(name)\n")
            }
        }
        
        
        return sentence
    }
    
    
    
    // Question #9
    func addHearts() {
        for (type, names) in starWarsCharacters {
            var newName = ""
            for name in names {
                newName = name.replacingOccurrences(of: "o", with: "❤️")
            }
            starWarsCharacters.updateValue([newName], forKey: type)
            
        }
    }
    
    
    
}
