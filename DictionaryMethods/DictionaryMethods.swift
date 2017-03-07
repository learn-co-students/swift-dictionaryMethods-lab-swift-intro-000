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
    "Rey"]
    
    
    var starWarsVillains: [String] = [
    "Darth Vader",
    "Emperor Palpatine"]

    var starWarsDroids: [String] = [
    "R2-D2",
    "C-3P0",
    "IG-88",
    "BB-8"]
    
    var starWarsCharacters: [String: [String]] = [ : ]

    var starWarsGangsters: [String] = [
    "Watto",
    "Jabba the Hutt"]
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        if let index = starWarsDroids.index(of: droid) {
            starWarsDroids.remove(at: index)
            return true
        } else {
            return false
        }
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
    func description(characters: [String:[String]]) -> String {
        
        var returnString = "--Star Wars Characters--"
        for (key, value) in characters {
            returnString += "\n\(key.uppercased())\n"
            for(index, item) in value.enumerated() {
                returnString += "\(index+1). \(item)\n"
            }
        }
        
        return returnString
    }
    
    
    
    
    // Question #9
    func addHearts() {
        for (key, value) in starWarsCharacters {
            var newValue = value
            
            for (index, item) in value.enumerated() {
                
                if item.contains("o") {
                    let newItem = item.replacingOccurrences(of: "o", with: "❤️")
                    newValue[index] = newItem
                }
                
                starWarsCharacters[key] = newValue

            }
            
            
            
            
        }
}
}
