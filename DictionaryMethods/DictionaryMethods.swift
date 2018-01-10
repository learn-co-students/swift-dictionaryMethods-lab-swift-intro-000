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
    var starWarsHeroes:[String] = []
    var starWarsVillians:[String] = []
    var starWarsDroids:[String] = []
    var starWarsGangsters:[String] = []
    var starWarsCharacters:[String : [String]] = [:]
    
    func intialize() {
        starWarsHeroes = ["Luke Skywalker","Princess Leia","Han Solo","Rey"]
        starWarsVillians = ["Darth Vader","Emperor Palpatine"]
        starWarsDroids = ["R2-D2","C-3P0","IG-88","BB-8"]
        starWarsGangsters = ["Watto","Jabba the Hutt"]
    }
    
    // Question #4
    func addKyloRen() {
        starWarsVillians.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid:String) -> Bool {
        for (index, value) in starWarsDroids.enumerated() {
            if value == droid {
                if starWarsDroids.remove(at: index) == droid {
                    return true
                }
                else {
                    return false
                }
            }
        }
    }
    
    
    
    // Question #6
    remove(droid: "Blooper")
    // false
    
    remove(droid: "R2-D2")
    // true
    
    func createStarWarsCharacters() {
        starWarsCharacters.updateValue(starWarsHeroes, forKey: "Heroes")
        starWarsCharacters.updateValue(starWarsDroids, forKey: "Droids")
        starWarsCharacters.updateValue(starWarsVillians, forKey: "Villians")
    }
    
    // Question #7
    func createStarWarsGangsters() {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    // Question #8
    func description(characters:[String : [String]]) -> String {
        var sentence = "--Star Wars Characters--"
        for (keys, values) in characters {
            sentence = "\(sentence)\n\(keys.uppercased())\n"
            for (index, myvalue) in values.enumerated() {
                sentence = "\(sentence)\(index + 1) \(myvalue)\n"
            }
            
        }
    }
    
    
    
    // Question #9
    
    
    
    
}
