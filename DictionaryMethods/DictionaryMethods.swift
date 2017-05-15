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
        "Rey" ]
    
    var starWarsVillains = [
        "Darth Vader",
        "Emperor Palpatine" ]

    var starWarsDroids = [
        "R2-D2",
        "C-3P0",
        "IG-88",
        "BB-8" ]
    
    var starWarsGangsters = [
        "Watto",
        "Jabba the Hut" ]
    
    var starWarsCharacters: [String : [String]] = [:]
    
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        var returnValue = false
        for (index, droids) in starWarsDroids.enumerated() {
            if droids == droid {
                starWarsDroids.remove(at: index)
                returnValue = true
            }
        }
        return returnValue
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
        for (characterType, character) in characters {
            output += characterType.uppercased()
            for (index, charName) in character.enumerated() {
                output += "\n\(index+1). \(charName)"
            }
        }

        return output
    }
    
    
    
    // Question #9
    func addHearts() {
        for (type, names) in starWarsCharacters {
            var newNames = names
            
            for (index, name) in newNames.enumerated() {
                if name.contains("o") {
                    let newName = name.replacingOccurrences(of: "o", with: "❤️")
                    newNames[index] = newName
                }
            starWarsCharacters[type] = newNames
            }
            
            
            
        }
    }
    
    
    
    
    
    
    
    
    
    
}
