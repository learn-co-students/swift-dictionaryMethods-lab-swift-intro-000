//
//  DictionaryMethods.swift
//  DictionaryMethods
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryMethods {
    
    
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
    
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    var starWarsCharacters: [String: [String]] = [:]
    
    func createStarWarsCharacters() {
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
    }
    
    var starWarsVillains: [String] = [
        "Darth Vader",
        "Emperor Palpatine"
    ]
    
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    func remove(droid: String) -> Bool {
        if let droidIndex = starWarsDroids.index(of: droid) {
            starWarsDroids.remove(at: droidIndex)
            return true
        }
        
        return false
    }
    
    func description(characters: [String: [String]]) -> String {
        var result = "--Star Wars Characters--\n"
        
        for (type, character) in characters {
            result += "\(type.uppercased())\n"
            for (index, character) in character.enumerated() {
                result += "\(index + 1). \(character)\n"
            }
        }
        
        return result
    }
    
    func addHearts() {
        for (type, names) in starWarsCharacters {
            var newNames = names
            for (index, name) in newNames.enumerated() {
                if name.contains("o") {
                    let newName = name.replacingOccurrences(of: "o", with: "❤️")
                    newNames[index] = newName
                }
            }
            starWarsCharacters[type] = newNames
        }
    }
    
}
