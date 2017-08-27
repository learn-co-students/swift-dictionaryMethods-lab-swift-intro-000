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
    var starWarsVillains = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsCharacters = [String:[String]]()
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        if starWarsDroids.isEmpty {
            return false
        } else {
            if let indexDroid = starWarsDroids.index(of: droid) {
                starWarsDroids.remove(at: indexDroid)
                return true
            } else {
                return false
            }
        }
    }
    
    
    
    // Question #6
    func createStarWarsCharacters() {
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
    }
    
    
    
    // Question #7
    func createStarWarsGangsters(){
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    
    // Question #8
    func description(characters: [String:[String]]) -> String{
        var myCharacters = "--Star Wars Characters--/n"
        for (key, value) in characters{
            myCharacters += "\(key.uppercased())/n"
            for (key2, value2) in value.enumerated(){
                myCharacters += "\(key2 + 1). \(value2)/n"
            }
        }
        return myCharacters
    }
    
    
    
    // Question #9
    func addHearts() {
        for (key, value) in starWarsCharacters{
            var lovelyCharacters = [String]()
                for name in value{
                    lovelyCharacters.append(name.replacingOccurrences(of: "o", with: "❤️"))
                }
            starWarsCharacters[key] = lovelyCharacters
        }
    }
    
    
    
    
}
