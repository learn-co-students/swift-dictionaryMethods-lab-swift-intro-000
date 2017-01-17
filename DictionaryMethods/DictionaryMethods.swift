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
    var starWarsDroids = ["R2-D2", "C-3PO", "IG-88", "BB-8"]
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    var starWarsCharacters: [String: [String]] = [:]
    
        func addKyloRen() {
            starWarsVillains.append("Kylo Ren")
        }
   
    
        func remove(droid: String) -> Bool {
            if let index = starWarsDroids.index(of: droid) {
                starWarsDroids.remove(at: index)
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
                
                sentence += "\n"
                sentence += type.uppercased()
                
                for (index, name) in names.enumerated() {
                    
                    sentence += "\n"
                    sentence += "\(index + 1). \(name)"
                }
            }
            
            return sentence
        }
    
    
    
    
        func addHearts() {
            for (type, names) in starWarsCharacters {
                var newNames = names
                
                for (index, name) in newNames.enumerated() {
                    
                    if name.contains("o") {
                        
                        var newName = name.replacingOccurrences(of: "o", with: "❤️")
                        
                        newNames[index] = newName
                    }
                }
            
                starWarsCharacters[type] = newNames
            }
        
        }
    
    
}
