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
    var starWarsCharacters = [String: [String]]()
    
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    func remove(droid: String) -> Bool {
        var itemFound = false
        if let index = starWarsDroids.index(of: droid) {
            starWarsDroids.remove(at: index)
            itemFound = true
        }
        return itemFound
    }
    
    func createStarWarsCharacters() {
        starWarsCharacters = ["Heroes": starWarsHeroes,
                              "Villains": starWarsVillains,
                              "Droids": starWarsDroids]
    }
    
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    func description(characters: [String: [String]]) -> String {
        var characterList = "--Star Wars Characters--\n"
        
        if characters.isEmpty {
            characterList = "Oops, the list of characters is empty.\n"
        } else {
            for (type, names) in characters {
                characterList += "\(type.uppercased())\n"
                for (index, name) in names.enumerated() {
                    characterList += "\(index + 1). \(name)\n"
                }
            }
        }
        return characterList
    }
    
    func addHearts() {

        for (type, names) in starWarsCharacters {
            var changeName = Array(names)
            for (index, name) in names.enumerated() {
                changeName[index] = name.replacingOccurrences(of: "o", with: "♥️")
            }
            starWarsCharacters[type] = changeName
        }
    }
}
