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
    var starWarsCharacters = [String: [String]]()
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        
        if let indexOfDroid = starWarsDroids.index(of: droid) {
            starWarsDroids.remove(at: indexOfDroid)
            return true
        } else {
            return false
        }
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
        var sentence = "--Star Wars Characters--\n"
        for (type, name) in characters{
            sentence = sentence + "\(type.uppercased())\n"
            for (index, eachName) in name.enumerated() {
                sentence = sentence + "\(index+1). \(eachName)\n"
            }
        }
        return sentence
    }
    
    
    // Question #9
    func addHearts() {
        for (type, names) in starWarsCharacters{
            for (index, eachName) in names.enumerated(){
                starWarsCharacters[type]![index] = eachName.replacingOccurrences(of: "o", with: "❤️")
            }
        }
    }
    
    
    
}
