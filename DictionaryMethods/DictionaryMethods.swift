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
    
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    
    var starWarsCharacters : [String: [String]] = [:]

    
    // Question #4
    func addKyloRen(){
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool{
        var result = false
        
        for (index, d) in starWarsDroids.enumerated(){
            if d == droid{
                starWarsDroids.remove(at: index)
                result = true
            }
        }
        
        return result
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
    
    func description(characters: [String: [String]]) -> String {
        
        var stringToReturn = "--Star Wars Characters --/n"
        
        
        for(type, names) in characters{
            stringToReturn += "\n\(type.uppercased())\n"
            
            for (index, name) in names.enumerated(){
                stringToReturn.append("\(index+1). \(name)")
            }
        }
        
        return stringToReturn
        
//        if let heroes = characters["Heroes"]{
//            stringToReturn.append("HEROES\n")
//            
//            for (index, hero) in heroes.enumerated(){
//                stringToReturn.append("\(index+1). \(hero)\n")
//            }
//        }
//        if let villains = characters["Villans"]{
//            stringToReturn.append("Villains\n")
//            
//            for (index, villan) in villains.enumerated(){
//                stringToReturn.append("\(index+1). \(villain)\n")
//            }
//        }
//        if let gangsters = characters["Gangsters"]{
//            stringToReturn.append("Gangsters\n")
//            
//            for (index, gangster) in gangsters.enumerated(){
//                stringToReturn.append("\(index+1). \(gangster)\n")
//            }
//        }
//        if let droids = characters["Droids""]{
//            stringToReturn.append("DROIDS\n")
//            
//            for (index, droids) in droids.enumerated(){
//                stringToReturn.append("\(index+1). \(droid)\n")
//            }
//        }
//
    }
    
    
    
    // Question #9
    
    
    func addHearts(){
        
        
        for(type, names) in starWarsCharacters{
            var newNames : [String] = []
            
                for name in names{
                    if name.contains("o"){
                        let name = name.replacingOccurrences(of: "o", with: "❤️")
                        newNames.append(name)
                        }
                }
            
            starWarsCharacters[type] = newNames
        }
        
    }

    
    
}
