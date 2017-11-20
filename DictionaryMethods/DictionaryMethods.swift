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
    var starWarsHeroes = ["Luke Skywalker",
        "Princess Leia",
        "Han Solo",
        "Rey"]

    var starWarsVillains = ["Darth Vader",
    "Emperor Palpatine"]
    
    var starWarsDroids = ["R2-D2",
        "C-3P0",
        "IG-88",
        "BB-8"]
    
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    
    // Question #4
   
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        var truefalse = false
        for (index, bot) in starWarsDroids.enumerated() {
            if bot == droid {
                starWarsDroids.remove(at: index)
                truefalse = true
            }
        }
        return truefalse
    }
    
    
    
    // Question #6
    var starWarsCharacters = [String: [String]]()  //create empty dictionary
    
    func createStarWarsCharacters() {
        
        starWarsCharacters = ["Heroes" : starWarsHeroes,
            "Villains" : starWarsVillains,
            "Droids" : starWarsDroids]
        
    }
    
    
    
    // Question #7
   
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    // Question #8
    func description(characters: [String : [String]]) -> String {
        var sent = "--Star Wars Characters--"
        var chars = ""
        for (key, value) in characters {  //value is an array of characters
            sent = sent + "\n\(key).uppercased()\n"
            chars = ""
            for (index, indiv) in value.enumerated() {  //indiv
                chars = chars + "\(index + 1). \(indiv)\n"
                
            }
            sent = sent + chars
            //            print(sent)
        }
        print(sent)
        return sent
    }

    
    
    
    // Question #9
    
    func addHearts() {
        for (key, list) in starWarsCharacters {
            for (index, name) in list.enumerated() { // loop thru each array of chars
               print("WTF")
            }
        }
    }
    
    
}
