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
    var starWarsCharacters: [String: [String]] = [:]
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
  
    func remove(droid: String) -> Bool {
        var pos = 0
        for droidName in starWarsDroids {
            if droidName == droid {
                starWarsDroids.remove(at: pos)
                return true
            }
            pos+=1
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
    func description(characters:[String:[String]]) ->String {
        var sentence = ""
        for (key, val) in characters {
            sentence += "\(key.uppercased())\n"
            for(num, char) in val.enumerated() {
                sentence += "\(num+1). \(char)\n"
            }
        }
        return sentence
    }
    
    
    
    // Question #9
    func addHearts() {
        for (key, value) in starWarsCharacters {
            var newVal = value
            for(index, name) in value.enumerated(){
                let newName = name.replacingOccurrences(of: "o", with: "❤️")
                newVal[index] = newName
            }
            starWarsCharacters.updateValue(newVal, forKey: key)
        
        }
    }
    
    
    
}
