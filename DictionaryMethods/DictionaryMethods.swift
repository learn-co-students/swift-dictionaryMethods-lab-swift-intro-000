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
    var starWarsDroids = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    var starWarsCharacters: [String: [String]] = [:]
    
    var starWarsVillains = ["Darth Vader", "Emperor Palpatine"]
    
    
    // Question #4
    func addKyloRen(){
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool{
        if let index = starWarsDroids.index(of: droid){
            starWarsDroids.remove(at: index)
            return true
        }
        return false
    }
    
    
    // Question #6
    func createStarWarsCharacters( ){
        starWarsCharacters = ["Heroes": starWarsHeroes, "Villains": starWarsVillains, "Droids": starWarsDroids]
    }
    
    
    
    // Question #7
    func createStarWarsGangsters( ){
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    
    // Question #8
    func description(characters: [String: [String]]) -> String{
        var r_str = "--Star Wars Characters--\n"
        for (type, names) in characters{
            r_str += "\(type.uppercased())\n"
            for (i, character_name) in names.enumerated(){
                r_str += "\(i + 1). \(character_name)\n"
            }
        }
        
        return r_str
    }
    
    
    
    // Question #9
    func addHearts( ){
        for (type, names) in starWarsCharacters{
            var t_arr: [String] = []
            for name in names{
                t_arr.append(name.replacingOccurrences(of: "o", with: "♥️"))
            }
            
            starWarsCharacters[type] = t_arr;
        }
    }
    
    
    
}
