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
    var starWarsHeroes = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    var starWarsVillains = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    var starWarsCharacters = [String: [String]]() //empty [String:[String]]
    
    func createStarWarsCharacters() {
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
    }
    
    // Question #4
    func addKyloRen() {
       starWarsVillains.append("Kylo Ren")
    }
    func remove(droid: String) -> Bool{
        for (index, value) in starWarsDroids.enumerated() {
            if(value == droid){
                starWarsDroids.remove(at: index)
                return true
            }
        }
        return false
    }
   
    
    
    
    // Question #5
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
  
    
    
    
    // Question #6
    func description(characters: [String: [String]]) -> String {
        var sentence = "--Star Wars Characters--"
        for(type, names) in characters {
            sentence += "\n\(type.uppercased())"
            for(index, element) in names.enumerated() {
                sentence += " \n\(index+1). \(element)"
            }
        }
        return sentence
    }
   
    
    func addHearts() {
        for (type, names) in starWarsCharacters {
            var newArray = names
            
            for (index, name) in newArray.enumerated() {
                if name.contains("o") {
                    let starWarsLoves = name.replacingOccurrences(of: "o", with: "❤️")
                    newArray[index] = starWarsLoves
                }
            }
            starWarsCharacters[type] = newArray
        }
    }
    
    
    
    
}
