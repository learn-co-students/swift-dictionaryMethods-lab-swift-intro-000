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
    var starWarsHeroes = ["Luke Skywalker",
                            "Princess Leia",
                            "Han Solo",
                            "Rey"]
    
    var starWarsVillains = ["Darth Vader",
                            "Emperor Palpatine"]
    
    var starWarsDroids = ["R2-D2",
                          "C-3P0",
                          "IG-88",
                          "BB-8"]
    
    var starWarsGangsters = ["Watto",
                             "Jabba the Hutt"]

    var starWarsCharacters: [String : [String]] = [:]
    
    
    
    func createStarWarsCharacters() {
        starWarsCharacters.updateValue(starWarsDroids, forKey: "Droids")
        starWarsCharacters.updateValue(starWarsVillains, forKey: "Villains")
        starWarsCharacters.updateValue(starWarsHeroes, forKey: "Heroes")
        
    }
    
    func createStarWarsGangsters(){
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    // Question #4
   
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    // Question #5
  
    func remove(droid: String) -> Bool {
        var removed: String?
        for (index,d) in starWarsDroids.enumerated() {
            if d == droid {
                removed = starWarsDroids.remove(at: index)
            }
        }
        
        if removed != nil {
            return true
        } else {
            return false
        }
    }
    
    
    // Question #6
   
    
    
    
    // Question #7
   
    
    
    
    // Question #8
    
    func description(characters: [String:[String]]) -> String {
        var sentence = "--Star Wars Characters--"
        
        for (type, list) in characters {
            sentence += "\n"
            sentence += type.uppercased()
            for (index, name) in list.enumerated() {
                sentence += "\n\(index + 1). \(name)"
            }
        }
        
        return sentence
    }
    
    
    // Question #9
    
    
    
    func addHearts() {
        
        for (type, list) in starWarsCharacters {
            var tempArray: [String] = []
            for var name in list {
                name = name.replacingOccurrences(of: "o", with: "❤️")
                
                tempArray.append(name)
            }
            starWarsCharacters.updateValue(tempArray, forKey: type)
        }
    }

    
    
}
