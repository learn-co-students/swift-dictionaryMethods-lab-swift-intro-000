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
    var starWarsHeroes:[String] = [
        "Luke Skywalker",
        "Princess Leia",
        "Han Solo",
        "Rey"
    ]
    var starWarsVillains: [String] = [
        "Darth Vader",
        "Emperor Palpatine"
    ]
    var starWarsDroids: [String] = [
        "R2-D2",
        "C-3P0",
        "IG-88",
        "BB-8"
    ]
    var starWarsCharacters: [String:[String]] = [:]
    var starWarsGangsters: [String] = [
        "Watto",
        "Jabba the Hutt"
    ]
    // Question #4
    func addKyloRen(){
//        starWarsVillains.insert("Kylo Ren", at: starWarsVillains.count + 1)
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid:String)->Bool{
        var response:Bool = false
        if !starWarsDroids.isEmpty{
            for (index,aDroid) in starWarsDroids.enumerated(){
                if droid == aDroid{
                    starWarsDroids.remove(at: index)
                    response = true
                }
            }
        }
        return response
    }
    
    
    
    // Question #6
    func createStarWarsCharacters(){
        starWarsCharacters = [
            "Heroes": starWarsHeroes,
            "Villains": starWarsVillains,
            "Droids": starWarsDroids
        ]
    }
    
    
    
    // Question #7
    func createStarWarsGangsters(){
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    
    // Question #8
    //Frome here i get lost
    func description(characters:[String:[String]]) -> String{
        var sentence = "--Star Wars Characters--"
        for (type, names) in characters{
            sentence += "\n\(type.uppercased())\n"
            for (index, name) in names.enumerated(){
                sentence += "\(index + 1). \(name)\n"
            }
        }
        return sentence
    }
    
    
    
    // Question #9
    //I didn't understant the whole thing
    func addHearts(){
        for (type, names) in starWarsCharacters {
            for(index, name) in names.enumerated() {
                starWarsCharacters[type]![index] = name.replacingOccurrences(of: "o", with: "❤️") //i also dont know whats "!" for
            }
        }
    }
    
    
    
}
