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
   
    func addKyloRen()
    {
        starWarsVillains.append("Kylo Ren")
        
    }
    
    
    // Question #5
    func remove(droid: String) -> Bool
    {
        let containsValue = starWarsDroids.contains(droid)
        var returnVal : Bool?
        
        if containsValue
        {
            if let index = starWarsDroids.firstIndex(of: droid)
            {
                starWarsDroids.remove(at: index)
                returnVal = true
            }
        }
        else
        {
            returnVal = false
         }
        
        
        return returnVal!
        
    }
    
    
    
    // Question #6
    var starWarsCharacters : [String: [String]] = [:]
    
    func createStarWarsCharacters ()
    {
        starWarsCharacters.updateValue(starWarsHeroes, forKey: "Heroes")
        starWarsCharacters.updateValue(starWarsVillains, forKey: "Villains")
        starWarsCharacters.updateValue(starWarsDroids, forKey: "Droids")
        
    }
    
    
    // Question #7
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    
    func createStarWarsGangsters ()
    {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    
    // Question #8
    
    func description (characters: [String : [String]]) -> String
    {
        var sentence = "--Star Wars Characters--"
        
        for (key, value) in characters
        {
            sentence += "\n\(key.uppercased())\n"
            for (index, name) in value.enumerated()
            {
                sentence += "\n\(index + 1). \(name)\n"
            }
        }
        
        return sentence
    }
    
    
    // Question #9
    func addHearts()
    {
        for (key, value) in starWarsCharacters
        {
            for name in value
            {
                if name.contains("o")
                {
                    name.replacingOccurrences(of: "o", with: "❤️")
                    starWarsCharacters.updateValue(value, forKey: key)
                    
                }
            }
        }
    }
    
    
    
}
