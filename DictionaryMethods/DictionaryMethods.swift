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
    
    var starWarsHeroes: [String] = [
        "Luke Skywalker",
        "Princess Leia",
        "Han Solo",
        "Rey"
    ]
    
    var starWarsVillains: [String] = [
        "Darth Vader",
        "Emperor Palpatine"
    ]
    
    var starWarsDroids = [
        "R2-D2",
        "C-3P0",
        "IG-88",
        "BB-8"
    ]

    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    
    var starWarsCharacters = [String:[String]]()
    
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
        starWarsCharacters.updateValue(starWarsHeroes, forKey: "Heroes")
        starWarsCharacters.updateValue(starWarsVillains, forKey: "Villains")
        starWarsCharacters.updateValue(starWarsDroids, forKey: "Droids")
    }
    
    // Question #7
   
    func createStarWarsGangsters() {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    // Question #8
    
    func description(characters: [String: [String]]) -> String {
        var sentence = "--Star Wars Characters--"
        for (team, names) in characters {
            sentence += "\n\(team.uppercased())"
            for (index, name) in names.enumerated() {
                sentence += "\n\(index + 1). \(name)"
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
