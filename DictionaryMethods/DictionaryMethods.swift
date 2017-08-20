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
    var starWarsHeroes:[String] = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    
    var starWarsVillains:[String] = ["Darth Vader", "Emperor Palpatine"]
    
    var starWarsDroids:[String] = ["R2-D2","C-3P0","IG-88","BB-8"]
    
    var starWarsGangsters:[String] = ["Watto","Jabba the Hutt"]

    var starWarsCharacters:[String:[String]] = [:]
    
    // Question #4
   
    func addKyloRen(){
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
  
    func remove(droid:String)->Bool{
        if(starWarsDroids.index(of: droid) != nil){
            starWarsDroids.remove(at: starWarsDroids.index(of: droid)!)
            return true
        }else{
            return false
        }
    }
    
    
    
    // Question #6
    func createStarWarsCharacters(){
        starWarsCharacters = ["Heroes":starWarsHeroes, "Villains": starWarsVillains, "Droids":starWarsDroids]
    }
    
    
    
    // Question #7
   
    func createStarWarsGangsters(){
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    // Question #8
    func description(characters:[String:[String]])->String{
        var out:String = "--Star Wars Characters--\n"
        for (key,value) in starWarsCharacters{
            out.append("\(key.uppercased())\n")
            var count = 1
            for c in value {
                out.append("\(count). \(c)\n")
                count = count + 1
            }
        }
        return out
    }
    
    
    
    // Question #9
    func addHearts(){
        for (key,value) in starWarsCharacters{
            var newArray:[String] = []
            for name in value{
                let newName = name.replacingOccurrences(of: "o", with: "❤️")
                newArray.append(newName)
            }
            starWarsCharacters[key] = newArray
        }
    }
   
    
    
}
