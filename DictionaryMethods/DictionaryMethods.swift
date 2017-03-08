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
    
    var starWarsCharacters : [String : [String]]  = [:]
    
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        
        print(droid)
        for (index, d) in starWarsDroids.enumerated() {
            print("\(index) \(d)")
            if droid == d {
                starWarsDroids.remove(at: index)
                return true
            }
        }
        return false
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
    func description(characters : [String : [String]]) -> String {
        var str = "--Star Wars Characters--\n"
        
        for (key, value) in characters {
            
            
            str += "\(key.uppercased())\n"
            
            for (i, c) in value.enumerated() {
                str += "\(i+1). \(c)\n"
            }
            
        }
        return str
    }
    
    
    
    
    // Question #9
    func addHearts() {
        for (key, value) in starWarsCharacters {
            var names = value
            
            for (key2, value2) in names.enumerated() {
                if value2.contains("o") {
                    var name = value2.replacingOccurrences(of: "o", with: "❤️")
                    names[key2] = name
                }
            }
           starWarsCharacters[key] = names
        }
    }
    
    
    
}
