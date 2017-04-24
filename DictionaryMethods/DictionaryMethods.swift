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
    var starWarsHeroes = ["Luke Skywalker", "Princes Leia", "Han Solo", "Rey"]
    var starWarsVillains = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids = ["R2-D2", "C-3PO", "IG-88", "BB-8"]
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    var starWarsCharacters: [String: [String]] = [:]
    
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    
    // Question #5
    func remove( droid: String) -> Bool {
        if let index = starWarsDroids.index(of: droid) {
            starWarsDroids.remove(at: index)
            return true
        } else {
            return false
        }
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
    func description(characters: [String: [String]]) -> String {
        var out = ""
        for (Class, classMembers) in characters {
            out = out + "\(Class.uppercased())\n"
            for (index, member) in classMembers.enumerated() {
                out = out + "\(index + 1). \(member)\n"
            }
        }
        return out
    }
    
    
    
    // Question #9
    func addHearts() {
        for (type, names) in starWarsCharacters {
            for (index,name) in names.enumerated() {
                if ( name.contains("o")) {
    
                    starWarsCharacters[type]![index] = name.replacingOccurrences(of: "o", with: "❤️")
                }
            }
        }
    }
    
    
    
}
