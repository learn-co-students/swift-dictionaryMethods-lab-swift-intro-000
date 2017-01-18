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
    var starWarsHeroes: [String] = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    var starWarsVillains: [String] = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids: [String] = ["R2-D2","C-3P0", "IG-88","BB-8"]
    var starWarsGangsters: [String] = ["Watto", "Jabba the Hutt"]
    var starWarsCharacters: [String:[String]] = [:]
    func createStarWarsCharacters() {
        starWarsCharacters.updateValue(starWarsHeroes, forKey: "Heroes")
        starWarsCharacters.updateValue(starWarsDroids, forKey: "Droids")
        starWarsCharacters.updateValue(starWarsVillains, forKey: "Villains")
    }
    func createStarWarsGangsters() {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    
    
    
    
    

    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid:String) -> Bool{
        var starWarsNew = starWarsDroids
        var trueOrFalse: Bool = false
        for (index, droids) in starWarsNew.enumerated() {
            if droid == droids {
                starWarsNew.remove(at:index)
            } else {
            }
        }
        if starWarsNew.count == starWarsDroids.count {
            trueOrFalse = false
        } else {
            trueOrFalse = true
        }
        starWarsDroids = starWarsNew
        return trueOrFalse
    }

    
    
    // Question #8
    func description (characters:[String:[String]])->String {
        
        var sentence = "--Star Wars Characters--"
        for (type, names) in characters {
            sentence += "\n \(type.uppercased())"
            
            for (index, character) in names.enumerated() {
                sentence += "\n \(index + 1). \(character)"
            }
        }
        
        return sentence
    }
    
    
    
    // Question #9
    
    func addHearts() {
        for (type, names) in starWarsCharacters {
            for characters in names {
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
    
    
}
