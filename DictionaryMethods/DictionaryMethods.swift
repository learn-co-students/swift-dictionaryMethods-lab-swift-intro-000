//
//  DictionaryMethods.swift
//  DictionaryMethods
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryMethods {
    
    var starWarsHeroes = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    var starWarsVillains = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    var starWarsCharacters: [String:[String]] = [:]
    

    func addKyloRen(){
        starWarsVillains.append("Kylo Ren")
    }
   
    
    
    func remove(droid: String) -> Bool {
        var indexCount = 0
        for i in starWarsDroids {
            if i == droid {
                starWarsDroids.remove(at: indexCount )
                return true
            } else {
                indexCount += 1
            }
        }
        return false
    }
        
  
    
    
    
    func createStarWarsCharacters(){
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
            
        }
   
    
    
    func createStarWarsGangsters(){
        starWarsCharacters["Gangsters"] = starWarsGangsters
            
        }
    
    
    func description(characters: [String: [String]]) -> String {
        
        var sentence = "--Star Wars Characters--"
        
        for (type, names) in characters{
            sentence += "\n\(type.uppercased())\n"
            for (index, name) in names.enumerated() {
                sentence += "\(index + 1). \(name)"
            }
        }
        return sentence
    }
    
    
    
    
    func addHearts() {
        for (type, var names) in starWarsCharacters {
            var i = 0
            for var name in names {
                if name.contains("o"){
                   name = name.replacingOccurrences(of: "o", with: "❤️")
                   names[i] = name
                    print(names[i])
                    i += 1
                } else {
                    print(names[i])
                    i += 1
                }
            }
        }
    }
    
      
}
    
    
    

