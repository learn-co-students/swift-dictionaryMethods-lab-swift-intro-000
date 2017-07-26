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
    
    var starWarsCharacters = [String:[String]]()
    
    
    // Question #4
   
    func addKyloRen() {
        
        starWarsVillains.append("Kylo Ren")
        
    }
    
    
    // Question #5
  
    func remove(droid: String) -> Bool {
        
        var result = true
        
        if let i = starWarsDroids.index(of: droid){
            starWarsDroids.remove(at: i)
        } else {
            result = false
        }
        
        return result
    }
    
    
    
    // Question #6
   
    func createStarWarsCharacters() {
        starWarsCharacters = [
            "Heroes": starWarsHeroes,
            "Villains": starWarsVillains,
            "Droids": starWarsDroids,
        ]
    }
    
    
    // Question #7
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    
    // Question #8
    func description(characters: [String: [String]]) -> String {
        var result = "--Star Wars Characters--"
        
        for(type,names) in characters {
            result += "\n\(type.uppercased())"
            
            for (index,people) in names.enumerated() {
                result += "\n\(index+1). \(people)"
            }
        }
        
        return result
    }
    
    
    
    // Question #9
    func addHearts(){
        for (type,names) in starWarsCharacters {
            for people in names {
                for i in people.characters {
                    if i == "o" {
                        
                        var temp = people
                        temp = temp.replacingOccurrences(of: "o", with: "❤️")
                        
                        if type == "Heroes" {
                            if let index = starWarsHeroes.index(of: people){
                                starWarsHeroes[index] = temp
                            }
                        } else
                            if type == "Villains" {
                                if let index = starWarsVillains.index(of: people){
                                    starWarsVillains[index] = temp
                                }
                            } else
                                if type == "Droids" {
                                    if let index = starWarsDroids.index(of: people){
                                        starWarsDroids[index] = temp
                                    }
                        }
                        
                    }
                }
            }
        }
        createStarWarsCharacters()
    }
    
    
    
}
