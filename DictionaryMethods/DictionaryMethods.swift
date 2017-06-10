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
    
    var starWarsCharacters: [String : [String]] = [:]
    
    // Question #4
    
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    // Question #5
  
    func remove(droid: String) -> Bool {
        let i = starWarsDroids.index(of: droid)
        if let i = i {
            starWarsDroids.remove(at: i)
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
    
    func description(characters: [String : [String]]) -> String {
        var output = "--Star Wars Characters--"
        for (key, nameArray) in characters {
            output += "\n"
            output += key.uppercased()
            for (i, name) in nameArray.enumerated() {
                output += "\n"
                let formattedString = "\(i + 1). \(name)"
                output.append(formattedString)
            }
         }
        
        return output
    }
    
    // Question #9
    
    func addHearts() {
        for (type, names) in starWarsCharacters {
            var newNames = names
            for (i, name) in newNames.enumerated() {
                if name.contains("o") {
                    let newName = name.replacingOccurrences(of: "o", with: "❤️")
                    newNames[i] = newName
                }
            }
            starWarsCharacters[type] = newNames
        }
    }
    
    
    
}
