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
    
    
    var starWarsCharacters: [String : [String]] = [:]
    
    

    
    var starWarsVillains = [
        
        "Darth Vader",
        "Emperor Palpatine"
        
    ]

    

    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        var toReturn = false
        for (index, value) in starWarsDroids.enumerated() {
            if value == droid {
                starWarsDroids.remove(at: index)
                toReturn = true
            }
        }
        
        return toReturn
    }
    
    
    
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
        
        starWarsCharacters["Gangsters"] = starWarsGangsters
        
    }

    
    
    // Question #8
    
    func description(characters: [String : [String]]) -> String {
        
        var sentence = "--Star Wars Characters--"
        
        for (title, names) in characters {
            sentence += "\n\(title.uppercased())"
                for (index, value) in names.enumerated() {
                    sentence += "\n\(index + 1). \(value)"
                }
           
        }
        
        return sentence
    }
    
    
    // Question #9
    
    func addHearts() {
        
        for (type, names) in starWarsCharacters {
            
            var newNames = names
            
            for (index, value) in names.enumerated() {
                
                if value.contains("o") {
                    
                    let newName = value.replacingOccurrences(of: "o", with: "❤️")
                    newNames[index] = newName
                }
                
            }
            
            starWarsCharacters[type] = newNames
            
        }
        
    }
    
    
}
