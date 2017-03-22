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
    
    //1.
    var starWarsHeroes = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    
    var starWarsVillains = ["Darth Vader", "Emperor Palpatine"]
    
    var starWarsDroids = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    
    var starWarsCharacters: [String : [String]] = [ : ]
    
   
    
    // Question #4
   
    func addKyloRen() {
        
        starWarsVillains.append("Kylo Ren")
    }
    

    // Question #5
  
    func remove(droid: String) -> Bool {
        
        for (index, droidName) in starWarsDroids.enumerated() {
            
            if droidName == droid {
                
                starWarsDroids.remove(at: index)
                return true
            }
        }
      return false
    }
    
    
    // Question #6
 
    
    func createStarWarsCharacters() {
        
        starWarsCharacters = ["Heroes": starWarsHeroes, "Villains": starWarsVillains, "Droids": starWarsDroids]
    }
    
    
    // Question #7
    
    func createStarWarsGangsters() {
        
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
        
    }
    
    
    
    // Question #8
    
    func description(characters: [String: [String]]) -> String {
        
        var sentence = "--Star Wars Characters--"
       
        
        for (key, names) in characters {
            
            sentence += "\n\(key.uppercased())"
          
            for (index, name) in names.enumerated() {
                
                sentence += "\n\(index + 1). \(name)"
            }
        }
        
        return sentence
    }
    

    
    // Question #9
    
    func addHearts() {
        
        for (key, names) in starWarsCharacters {
            
            var newNames = names
            
            for (index, name) in names.enumerated() {
                
                if name.contains("o") {
                    
                    let newName = name.replacingOccurrences(of: "o", with: "❤️")
                    newNames[index] = newName //This is saying that the particuar newNames array value @ the index which this name was replaced is now equals to a new value of an item in the array of the dictionary called newName.
                }
            }
            starWarsCharacters[key] = newNames  //remember that starWars.[key] gives the value of the key, so we have to update our keys in dictionary (since we have just updated a value in dic i.e. newNames), by equating our key value with newnames.
        }
    }
    
    
    
}
