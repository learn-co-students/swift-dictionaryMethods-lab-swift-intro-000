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
        "Luke Skywalker" ,
        "Princess Leia" ,
        "Han Solo" ,
        "Rey"
    ]
    
    var starWarsVillains = [
        "Darth Vader" ,
        "Emperor Palpatine"
    ]
    
    var starWarsDroids = [
        "R2-D2", "C-3P0" , "IG-88", "BB-8"
    ]

    
    var starWarsCharacters: [String : [String]] =  Dictionary()
    
    var starWarsGangsters = ["Watto","Jabba the Hutt"]
    
    // Question #4
    func addKyloRen(){
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid:String)->Bool{
        let i: Int? = starWarsDroids.index(of: droid)
        if let ind = i {
            starWarsDroids.remove(at: ind)
            return true
        }
        else { return false }
    }
    
    
    
    // Question #6
   
    
    func createStarWarsCharacters(){
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
    }
    
    
    // Question #7
    func createStarWarsGangsters(){
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    
    // Question #8
    
    func description(characters: Dictionary<String , [String]>)-> String{
        var result = "--Star Wars Characters--"
        starWarsCharacters.forEach{ entry in
            result+=entry.key.uppercased()
            for (key,elem) in entry.value.enumerated(){
                let temp = String(key+1)+". "+elem+"\n"
                result += temp
                
            }
        }
        return result
    }
    
    
    // Question #9
    func addHearts(){
        var tempDictionary : [String:[String]] = Dictionary<String,[String]>()
        
        for (entry) in starWarsCharacters{
            let key: String = entry.key
            tempDictionary[key] = []
            for (name) in entry.value {
                tempDictionary[key]?.append(name.replacingOccurrences(of: "o", with: "❤️"))
            }
        }
        
        starWarsCharacters = tempDictionary
    }
    
    
    
}
