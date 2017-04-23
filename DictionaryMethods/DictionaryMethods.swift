//
//  DictionaryMethods.swift
//  DictionaryMethods
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryMethods {
    
    var starWarsHeroes = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    var starWarsVillains = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    var starWarsCharacters: [String:[String]] = [:]

    
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
   
    

    func remove(droid: String) -> Bool {
        var droidToRemove: Int?
        for (index, droids) in starWarsDroids.enumerated() {
            if droid == droids {
                droidToRemove = index
            }
        }
        
        if let droid = droidToRemove {
            starWarsDroids.remove(at: droid)
            return true
        } else {
            return false
        }
        
    }
    
    
    
    func createStarWarsCharacters() {
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
    }
    
    
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    func description(characters: [String: [String]]) -> String {
        var sentence = "--Star Wars Characters--"
        
        for (type, names) in characters {
            sentence += "\n\(type.uppercased())"
            for (index, name) in names.enumerated() {
                sentence += "\n\(index + 1). \(name)"
            }
        }
        
        return sentence
        
    }
    
    func addHearts() {
        var modifiedValue = String()
        
        for (key,value) in starWarsCharacters {
            if var value = starWarsCharacters[key] {
                
                // You can edit the array here
                //value.append("Joe")
                
                for (index, character) in value.enumerated() {
                    //print(character)
                    if character.contains("o") {
                        
                        // Store a copy of the character to modify
                        modifiedValue = character
                        for char in character.characters {
                            // Access char
                            if var i = modifiedValue.characters.index(of: "o") {
                                
                                modifiedValue.remove(at: i )
                                modifiedValue.insert("❤️", at: i)
                                value[index] = modifiedValue
                            }
                        }
                        
                        
                        
                    }
                }
                
                starWarsCharacters[key] = value
                print(value)
            }
        }
        
    }
    
    
}
