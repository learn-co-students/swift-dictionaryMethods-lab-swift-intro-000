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
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]

    // Question #4
    func addKyloRen()
    {
        starWarsVillains.append("Kylo Ren")
    }

    // Question #5
    func remove(droid: String) -> Bool
    {
        if let index = starWarsDroids.index(of: droid)
        {
            starWarsDroids.remove(at: index)
            return true
        }
        else
        {
            return false
        }
    }

    // Question #6
    var starWarsCharacters: [String : [String]] = [:]
    
    func createStarWarsCharacters()
    {
        starWarsCharacters.updateValue(starWarsHeroes, forKey: "Heroes")
        starWarsCharacters.updateValue(starWarsVillains, forKey: "Villains")
        starWarsCharacters.updateValue(starWarsDroids, forKey: "Droids")
    }

    // Question #7
    func createStarWarsGangsters()
    {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }

    // Question #8
    func description(characters:[String:[String]]) -> String
    {
        var sentence1: [String] = ["--Star Wars Characters--\n"]
        //var sentence2: [String]
        
        for (key, value) in starWarsCharacters
        {
            var key1 = key+"\n"
            
            sentence1.append(key1.uppercased())
            
            for (index, value2) in value.enumerated()
            {
                sentence1.append("\(index+1). \(value2)\n")
            }
        }
        
        return sentence1.joined()
    }
    
    
    
    
    // Question #9
    func addHearts()
    {
        for (key, value) in starWarsCharacters
        {
            var tmp2: [String] = []
            for value2 in value
            {
                var tmp = value2.replacingOccurrences(of: "o", with: "♥️")
                tmp2.append(tmp)
                
            }
            starWarsCharacters.updateValue(tmp2, forKey: key)
        }
    }
    
    
    
    
}
