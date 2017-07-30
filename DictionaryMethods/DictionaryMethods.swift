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
    
    var starWarsVillains = ["Darth Vader","Emperor Palpatine"]

    var starWarsDroids = ["R2-D2",
    "C-3P0",
    "IG-88",
    "BB-8"]
    
    var starWarsCharacters : [String : [String]] = [:]
    
    var starWarsGangsters = ["Watto" , "Jabba the Hutt"]
    
    // Question #4
    
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    
    func remove(droid : String) -> Bool {
        var pos : Int?
        for (index,name) in starWarsDroids.enumerated() {
            if name == droid {
                pos = index
            }
        }
        
        if pos == nil {
            return false
        } else {
            if let post = pos {
                starWarsDroids.remove(at: post)
            }
            return true
        }
        
        
    }
  
    
    
    
    // Question #6
    
    func createStarWarsCharacters() {
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Droids"] = starWarsDroids
        starWarsCharacters["Villains"] = starWarsVillains
    }
   
    
    
    
    // Question #7
   
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    
    // Question #8
    
    func description(characters: [String:[String]]) -> String {
        var sentence = "--Star Wars Characters--\n"
        for (typ,charac) in characters {
            sentence += "\(typ.uppercased())\n"
            for (index,name) in charac.enumerated() {
                sentence += "\(index+1). \(name)\n"
            }
        }
        return sentence
    }
    
    
    
    // Question #9
    
    func addHearts() {
        for (typ,var charac) in starWarsCharacters {
            for (index,name) in charac.enumerated() {
                charac[index] = name.replacingOccurrences(of: "o", with: "❤️")
            }
            starWarsCharacters[typ] = charac
        }
    }
    
    
    
}
