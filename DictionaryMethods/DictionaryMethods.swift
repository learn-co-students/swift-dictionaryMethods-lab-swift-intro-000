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
    

    
    // Question #4
   
    func addKyloRen() {
        starWarsVillains.append(contentsOf: ["Kylo Ren"])
    }
    
    
    
    // Question #5
  
    func remove(droid: String) -> Bool {
        if let index = starWarsDroids.index(of: droid) {
            starWarsDroids.remove(at: index)
            return true
        } else {
            return false
        }
    }
    
    
    // Question #6
    var starWarsCharacters = [String: [String]]()
    
    func createStarWarsCharacters() {
        starWarsCharacters.updateValue(starWarsHeroes, forKey: "Heroes")
        starWarsCharacters.updateValue(starWarsVillains, forKey: "Villains")
        starWarsCharacters.updateValue(starWarsDroids, forKey: "Droids")
        
    }
    
    
    // Question #7
   
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    
    func createStarWarsGangsters() {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    
    // Question #8
    
    func description(characters: [String: [String]]) -> String {
        var description = "--Star Wars Characters--\n"
        for (key, val) in characters {
            description = "\(description)\(key.uppercased())\n"
            for (idx, v) in val.enumerated(){
                description = "\(description)\(idx+1). \(v)\n"
            }
        }
        return description
    }
    

    
    
    
    // Question #9
    
    func addHearts() {
        for (type, _) in starWarsCharacters {
            
            for (idx, n) in (starWarsCharacters[type]?.enumerated())! {
                starWarsCharacters[type]! [idx] = n.replacingOccurrences(of: "o", with: "❤️")
                print(n)
            }
            
        }
        print(starWarsCharacters)
    }
    
    
}
