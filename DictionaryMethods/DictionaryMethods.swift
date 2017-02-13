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
    
    var starWarsDroids: [String] = [
        "R2-D2",
        "C-3P0",
        "IG-88",
        "BB-8"
    ]
    
    var starWarsGangsters: [String] = [
        "Watto",
        "Jabba the Hutt"
    ]
    
    var starWarsCharacters: [String : [String]] = [:]

    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    // Question #5
    func remove(droid: String) -> Bool {
        var indexOfDroid: Int?
        
        for n in starWarsDroids {
            if n == droid {
                indexOfDroid = starWarsDroids.index(of: droid)
            }
        }
        
        if let indexOfDroid = indexOfDroid {
            starWarsDroids.remove(at: indexOfDroid)
            return true
        } else{
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
        var str: String = "--Star Wars Characters--"
        for (type,names) in starWarsCharacters{
            str += "\n\(type.uppercased())"
            
            for (x,y) in names.enumerated() {
                str += "\n\(x+1). \(y)"
            }
        }
        return str
    }
    
    // Question #9
    func addHearts() {
        for (type,names) in starWarsCharacters {
            for name in names {
                let updatedName = name.replacingOccurrences(of: "o", with: "❤️")
                starWarsCharacters.updateValue([updatedName], forKey: type)
            }
        }
    }
    
    
    
}
