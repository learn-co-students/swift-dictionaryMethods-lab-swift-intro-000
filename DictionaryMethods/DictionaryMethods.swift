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
    var starWarsHeroes: [String] = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    var starWarsVillains: [String] = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids: [String] = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsGangsters: [String] = ["Watto", "Jabba the Hunt"]
    var starWarsCharacters: [String: [String]] = [String: [String]]()
    
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        if let index = starWarsDroids.index(of: droid) {
            if index >= 0 {
                starWarsDroids.remove(at: index)
                return true;
            }
        }
        return false;
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
    func description(characters: [String: [String]]) -> String {
        var returnVal = "--Star Wars Characters--\n"
        var i = 0
        var array1 = [String]()
        var index = 1
        
        while(i < characters.count) {
            switch i {
            case 0:
                if let array = characters["Heroes"] {
                    array1 = array
                    returnVal += "HEROES\n"
                }
            case 1:
                if let array = characters["Villains"] {
                    array1 = array
                    returnVal += "VILLAINS\n"
                }
            case 2:
                if let array = characters["Gangsters"] {
                    array1 = array
                    returnVal += "GANGSTERS\n"
                }
            case 3:
                if let array = characters["Droids"] {
                    array1 = array
                    returnVal += "DROIDS\n"
                }
            default:
                print("Nothing")
            }
            
            for val in array1  {
                returnVal += "\(index). \(val)\n"
                index = index + 1
                print(returnVal)
            }
        
            index = 1
            i+=1
        }
        
        
        return returnVal
    }
    
    
    
    
    // Question #9
    func addHearts() {
        for (type, names) in starWarsCharacters {
            var tempNames: [String] = [String]()
        
            for value in names {
                tempNames.append(value.replacingOccurrences(of: "o", with: "❤️"))
            }
            starWarsCharacters.updateValue(tempNames, forKey: type)
        }
    }
    
    
    
}
