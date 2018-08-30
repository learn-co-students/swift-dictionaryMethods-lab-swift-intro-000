//
//  DictionaryMethods.swift
//  DictionaryMethods
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryMethods{
    
    var starWarsHeroes: [String] = [
        "Luke Skywalker",
        "Princess Leia",
        "Han Solo",
        "Rey"
    ]
    
    var starWarsVillains: [String] = [
        "Darth Vader",
        "Emperor Palpatine"
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
    
    var starWarsCharacters: [String : [String]] = [:]
    
    func createStarWarsCharacters() {
        starWarsCharacters = [
            "Heroes" : starWarsHeroes,
            "Villains" : starWarsVillains,
            "Droids" : starWarsDroids
        ]
    }
    
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    func remove(droid: String) -> Bool {
        guard let removeIndex = starWarsDroids.index(of: droid) else {
            return false
        }
    
        starWarsDroids.remove(at: removeIndex)
        return true
    }
    
    func description(characters: [String: [String]]) -> String{
        var sentence: String = ""
        
        for (type, name) in starWarsCharacters{
            sentence += "\n\(type.uppercased())\n"
            for (index, character) in name.enumerated(){
                sentence += "\n\(index + 1). \(character)\n"
            }
        }
        return sentence
    }
    
    func addHearts(){
        for (types , (var names)) in starWarsCharacters{
            for (index, name) in names.enumerated() {
                names[index] = name.replacingOccurrences(of: "o", with: "♥️")
            }
            starWarsCharacters[types] = names
        }
        
        // Need some help with this one. The unit test past but now starWarsCharacters is looped and added to 4 times. 
    }
}
