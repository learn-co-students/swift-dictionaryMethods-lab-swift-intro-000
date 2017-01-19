//
//  DictionaryMethods.swift
//  DictionaryMethods
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
// 
// String find and replace found at:
// http://stackoverflow.com/a/24201206

import Foundation

class DictionaryMethods {
    
    var starWarsHeroes = [
    "Luke Skywalker",
        "Princess Leia",
        "Han Solo",
        "Rey"
    ]
    
    var starWarsVillains = [
        "Darth Vader",
        "Emperor Palpatine"
    ]
    
    var starWarsDroids = [
        "R2-D2",
        "C-3P0",
        "IG-88",
        "BB-8"
    ]
    
    var starWarsGangsters = [
        "Watto",
        "Jabba the Hutt"
    ]
    
    var starWarsCharacters = [String: [String]]()
    
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
        var format = "--Star Wars Characters--\n"
        for (type, names) in characters {
            format += type.uppercased() + "\n"
    
            for (index, name) in names.enumerated() {
                format += "\(index+1). \(name)\n"
            }//End Array for loop
        }// End Dictionary for loop
        // Pop \n from the string
        format.remove(at: format.index(before: format.endIndex))
        return format
    }

    func addHearts() {
        var replaceArr = [String]()
        for (type, names) in starWarsCharacters {
            for name in names {
                if name.contains("o") {
                    replaceArr.append(name.replacingOccurrences(of: "o", with: "❤️"))
                } else {
                    replaceArr.append(name)
                }
            }// End Array for loop
            
            starWarsCharacters[type] = replaceArr
            
        }// End Dictionary for loop
    }
    
}
