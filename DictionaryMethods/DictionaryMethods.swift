//
//  DictionaryMethods.swift
//  DictionaryMethods
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryMethods {
    
    // Questions #1, #2, #3, #6 #7
    var starWarsHeroes = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    
    var starWarsVillains = ["Darth Vader", "Emperor Palpatine"]
    
    var starWarsDroids = [ "R2-D2", "C-3P0", "IG-88", "BB-8"]
    
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    
    func createStarWarsGangsters() {
       starWarsCharacters["Gangsters"] = starWarsGangsters
        
    }
    
    var starWarsCharacters = [String : [String]]()
    
    func createStarWarsCharacters() {
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
    }
    
    

        // Question #4
   
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    // Question #5
  
    func remove(droid: String) -> Bool {
        for (index, element) in starWarsDroids.enumerated(){
            if droid == element {
                starWarsDroids.remove(at: index)
                return true
            }
        }
        return false
    }
    
    
    // Question #8
    
    
    func description(characters: [String: [String]]) -> String {
        var starWarsAnswer = "--Star Wars Characters--"
        for (type, name) in characters {
            starWarsAnswer += "\n\(type.uppercased())"
            for (index, character) in name.enumerated(){
            starWarsAnswer += " \n\(index + 1). \(character)"
            }
            
        }
        return starWarsAnswer
        
    }
    
  
    
    
    
    
    // Question #9
    
    func addHearts() {
        for (type, names) in starWarsCharacters {
                var newArray = names
                
                for (index, name) in newArray.enumerated(){
                    if name.contains("o"){
                        let starWarsLoves = name.replacingOccurrences(of: "o", with: "❤️")
                        newArray[index] = starWarsLoves
                    }
                }
                starWarsCharacters[type] = newArray
            }
            
        }
        
    }
 
