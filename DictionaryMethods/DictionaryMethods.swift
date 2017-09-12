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
    
    var starWarsHeroes: [String] = ["Luke Skywalker",
                                    "Princess Leia",
                                    "Han Solo",
                                    "Rey"]
    
    var starWarsVillains: [String] = ["Darth Vader",
                                     "Emperor Palpatine"]
    
    var starWarsDroids: [String] = ["R2-D2",
                                    "C-3P0",
                                    "IG-88",
                                    "BB-8"]
    
    var starWarsGangsters: [String] = ["Watto",
                                       "Jabba the Hutt"]
    
    var starWarsCharacters: [String: [String]] = [:]
    
    // Question #4
   
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    // Question #5
  
    func remove(droid: String) -> Bool {
        for (index,item) in starWarsDroids.enumerated() {
            if item == droid {
                starWarsDroids.remove(at: index)
                return true
            }
        }
        return false
    }
    
    
    // Question #6
   
    func createStarWarsCharacters() {
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Droids"] = starWarsDroids
        starWarsCharacters["Villains"] = starWarsVillains
    }
    
    
    // Question #7
   
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    // Question #8
    
    func description(characters: [String:[String]]) -> String {
        var result = "--Star Wars Characters--\n"
        result += "HEROES\n"
        if let tempArray = starWarsCharacters["Heroes"] {
            for (index, item) in tempArray.enumerated(){
                result += "\(index + 1). \(item)\n"
            }
        }
        result += "VILLAINS\n"
        if let tempArray = starWarsCharacters["Villains"] {
            for (index, item) in tempArray.enumerated(){
                result += "\(index + 1). \(item)\n"
            }
        }
        result += "GANGSTERS\n"
        if let tempArray = starWarsCharacters["Gangsters"] {
            for (index, item) in tempArray.enumerated(){
                result += "\(index + 1). \(item)\n"
            }
        }
        result += "DROIDS\n"
        if let tempArray = starWarsCharacters["Droids"] {
            for (index, item) in tempArray.enumerated(){
                result += "\(index + 1). \(item)\n"
            }
        }
        return result
    }
    
    
    // Question #9
    
    func addHearts() {
        for (type, names) in starWarsCharacters {
            var temp = [String]()
            for name in names {
                temp.append(name.replacingOccurrences(of: "o", with: "❤️"))
//              temp = name.replacingOccurrences(of: "o", with: "❤️")
            }
            starWarsCharacters[type] = temp
        }
    }
    
    
}
