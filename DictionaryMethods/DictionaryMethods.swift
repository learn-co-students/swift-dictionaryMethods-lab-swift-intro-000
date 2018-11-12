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
    var starWarsVillains = ["Darth Vader" ,"Emperor Palpatine"]
    var starWarsDroids = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    var starWarsCharacters = [String : [String]]()
    
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    func remove(droid: String) -> Bool {
        var droidFound = false
        
        for (index, value) in starWarsDroids.enumerated() {
            if droid == value {
                starWarsDroids.remove(at: index)
                droidFound = true
            }
        }
        return droidFound
    }
    
    func createStarWarsCharacters() {
        starWarsCharacters = ["Heroes" : starWarsHeroes, "Villains" : starWarsVillains, "Droids" : starWarsDroids]
    }
    
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    func description(characters: [String : [String]]) -> String {
        var sentence = "--Star Wars Characters--"
        for (key, value) in characters {
            sentence += "\n\(key.uppercased())\n"
            for (index, character) in value.enumerated() {
                sentence += "\(index + 1). \(character)\n"
            }
        }
        return sentence
    }
    
    func addHearts() {
        for (key, value) in starWarsCharacters {
            var name = ""
            var newCharacter = [""]
            for character in value {
                name = character.replacingOccurrences(of: "o", with: "♥️")
                newCharacter.append(name)
            }
            starWarsCharacters.updateValue(newCharacter, forKey: key)
        }
    }
}
