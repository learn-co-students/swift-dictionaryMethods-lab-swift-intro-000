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
    
    var starWarsVillains: [String] = [
        "Darth Vader",
        "Emperor Palpatine"
    ]

    
    // Question #4
   
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    // Question #5
    func remove(droid: String)-> Bool {
        var foundDroid = false
        for (index, value) in starWarsDroids.enumerated() {
            if droid == value {
                starWarsDroids.remove(at: index)
                foundDroid = true
        }
    }
        return foundDroid
}
    
    
    // Question #6
   
        func createStarWarsCharacters() {
            
            starWarsCharacters = ["Heroes" : starWarsHeroes, "Villains" : starWarsVillains, "Droids" : starWarsDroids]
            
        }
    
    
    
    // Question #7
   
        func createStarWarsGangsters() {
            starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
            
        }
    
    
    // Question #8
        
        func description(characters:  [String : [String]])-> String {
            
           var sentence = "--Star Wars Characters--"
            
            for (type, names) in characters {
                
                 sentence += "\n\(type.uppercased())\n"
                for (index, name) in names.enumerated() {
                    sentence += "\(index + 1). \(name)\n"
                }
                
            }
            return sentence
        }
    
    
    
    // Question #9
        func addHearts() {
            for (key, value) in starWarsCharacters {
                var name = ""
                var new_character = [""]
                for character in value {
                    name = character.replacingOccurrences(of: "o", with: "❤️")
                    new_character.append(name)
                }
                starWarsCharacters.updateValue(new_character, forKey: key)
            }


    }
}

