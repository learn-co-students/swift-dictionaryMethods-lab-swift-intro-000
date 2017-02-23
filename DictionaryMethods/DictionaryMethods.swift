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
    var starWarsGangsters = ["Watto" ,"Jabba the Hut"]
    var starWarsCharacters = [String : [String]] ()
    
    
    // Question #4
    func addKyloRen () {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        if let index = starWarsDroids.index(of: droid){
            starWarsDroids.remove(at: index)
            return true
        } else {
            return false
        }
        
    }
    
    
    
    // Question #6
    func createStarWarsCharacters() {
        starWarsCharacters = ["Heroes" : starWarsHeroes,
                              "Villains" : starWarsVillains,
                              "Droids" : starWarsDroids]
    }
    
    
    
    // Question #7
    func createStarWarsGangsters(){
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    
    // Question #8
    func description(characters: [String : [String]]) -> String {
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
    
    
    
    // Question #9
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
