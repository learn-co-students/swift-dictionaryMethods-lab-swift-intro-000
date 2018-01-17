//
//  DictionaryMethods.swift
//  DictionaryMethods
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryMethods {
    
    var starWarsHeroes: [String] = [
        "Luke Skywalker",
        "Princess Leia",
        "Han Solo",
        "Rey",
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
        "Jabba The Hutt"
    ]
    var starWarsCharacters: [String: [String]] = [:]

    func addKyloRen() -> Void {
        starWarsVillains.append("Kylo Ren")
    }
    
    func remove(droid: String) -> Bool {

        for i: Int in starWarsDroids.startIndex ..< starWarsDroids.endIndex {
            if starWarsDroids[i] == droid {
                starWarsDroids.remove(at: i)
                return true
            }
        }
        return false
    }
    
    func createStarWarsCharacters() -> Void {
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
    }
    
    func createStarWarsGangsters() -> Void {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    
    func description(characters: [String: [String]]) -> String {
        var sentence: String = "--Star Wars Characters--\n"

        for (type, names) in characters {
            sentence.append("\(type.uppercased())\n")
            for (offset, element) in names.enumerated() {
                sentence.append("\(offset + 1). \(element)\n")
            }
        }

        return sentence
    }
    
    
    
    
    func addHearts() -> Void {
        for (type, names) in starWarsCharacters {
            var newNames: [String] = []
            for name in names {
                newNames.append(name.replacingOccurrences(of: "o", with: "♥️"))
            }
            starWarsCharacters[type] = newNames
        }
    }
}
