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
    
    var starWarsGangsters = ["Watto", "Jabba the Hut"]
    
    var starWarsCharacters = [String : [String]]()
    
    
    
    // Question #4
    
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
        
    }
    
    // Question #5
    
    func remove(droid: String) -> Bool {
        if let droidIndex = starWarsDroids.index(of: droid) {
       print(droidIndex)
            starWarsDroids.remove(at: droidIndex)
            return true
        }else{
            return false
        }
    }

    
    
    // Question #6
    func createStarWarsCharacters() {
        let r1 = starWarsCharacters.updateValue(starWarsHeroes, forKey: "Heroes")
        let r2 = starWarsCharacters.updateValue(starWarsVillains, forKey: "Villains")
        let r3 = starWarsCharacters.updateValue(starWarsDroids, forKey: "Droids")
    }
    
    
    
    // Question #7
    
    func createStarWarsGangsters() {
    let r4 = starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    
    
    // Question #8
    
    func description(characters:[String: [String]]) ->String {
        var sentence = "--Star Wars Characters--"
        
        for (characterType, names) in characters {
            sentence += "\n\(characterType.uppercased())"
            for (index, name) in names.enumerated() {//use enumerated to get indexes
                sentence += "\n\(index + 1). \(name)"
            }
        }
        return sentence
    }
    
    // Question #9
    func addHearts() {
                for (type, names) in starWarsCharacters {
                        var newName = Array(names)
                        for (index, name) in names.enumerated() {
                                newName[index] = name.replacingOccurrences(of: "o", with: "♥️")
                            }
                       starWarsCharacters[type] = newName
                }
        }
}
