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
    
    var starWarsHeroes = ["Luke Skywalker","Princess Leia","Han Solo","Rey"]
    var starWarsVillains = ["Darth Vader","Emperor Palpatine"]
    var starWarsDroids = ["R2-D2","C-3P0","IG-88","BB-8"]
    var starWarsCharacters : [String:[String]] = [:]
    var starWarsGangsters = ["Watto","Jabba the Hutt"]
    
    // Question #4
   
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    // Question #5
  
    func remove(droid: String) -> Bool {
        
        for (index,value) in starWarsDroids.enumerated() {
            if value == droid{
                starWarsDroids.remove(at: index)
                return true
            }
        }
        
        return false
    }
    
    
    // Question #6
   
    func createStarWarsCharacters() {
        
        starWarsCharacters.updateValue(starWarsHeroes, forKey: "Heroes")
        starWarsCharacters.updateValue(starWarsVillains, forKey: "Villains")
        starWarsCharacters.updateValue(starWarsDroids, forKey: "Droids")
    }
    
    
    // Question #7
   
    func createStarWarsGangsters() {
        
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    
    // Question #8
    
    func description(characters:[String:[String]]) -> String {
        
        var stringF = "--Star Wars Characters--\n"
        for (key,array) in characters {
            stringF = stringF + "\(key.uppercased())\n"
            for (index,value) in array.enumerated(){
                stringF = stringF + "\(index + 1). \(value)\n"
            }
        }
        
        return stringF
    }
    
    
    // Question #9
    
    func addHearts() {
        
       
        var array1 : [String] = []
        for (key, array) in starWarsCharacters {
            for stringName in array {
                
                if stringName.contains("o"){
                    var newstr = stringName.replacingOccurrences(of: "o", with: "❤️")
                    array1.append(newstr)
                    
                } else {
                    array1.append(stringName)
                }
                
            }
            
            starWarsCharacters.updateValue(array1, forKey: key)
            
        }
        
        
        
    }
    
    
}
