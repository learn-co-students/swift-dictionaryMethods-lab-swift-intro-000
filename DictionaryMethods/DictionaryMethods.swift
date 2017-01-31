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
    var starWarsVillains = [
        "Darth Vader",
        "Emperor Palpatine"
    ]
    
    var starWarsHeroes = [
        "Luke Skywalker",
        "Princess Leia",
        "Han Solo",
        "Rey"
    ]
    
    var starWarsGangsters = [
        "Watto",
        "Jabba the Hutt"
    ]
    
    var starWarsDroids = [
        "R2-D2",
        "C-3P0",
        "IG-88",
        "BB-8"
    ]
    
    var starWarsCharacters: [String : [String]]
    
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    init() {
        starWarsCharacters = [:]
    }
    
    func remove(droid: String) -> Bool {
        let number: Int? = starWarsDroids.index(of: droid)
        if number == nil {
            return false
        } else {
            starWarsDroids.remove(at: number!)
            return true
        }
    }
    
    // Question #4
    
    
    
    
    // Question #5
    
    
    
    
    // Question #6
    
    func createStarWarsCharacters() {
        starWarsCharacters = [
            "Heroes" : starWarsHeroes,
            "Villains" : starWarsVillains,
            "Droids" : starWarsDroids
        ]
        
    }
    
    
    
    // Question #7
    
    func createStarWarsGangsters() {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    
    // Question #8
    
    func description(characters: [String : [String]]) -> String {
        var sentence = "--Star Wars Characters --"
        for(type,names) in characters {
            sentence += "\n\(type.uppercased())"
            for (index,name) in names.enumerated() {
                sentence += "\n\(index+1). \(name)"
            }
        }
        return sentence
    }
    
    
    // Question #9
    
    func addHearts() {
        for(type, names) in starWarsCharacters {
            var newNames = names
            for (index,name) in newNames.enumerated() {
                if name.contains("o") {
                    let newName = name.replacingOccurrences(of: "o", with: "❤️")
                    newNames[index] = newName
                }
            }
            starWarsCharacters[type] = newNames
        }
    }
    
    
}
