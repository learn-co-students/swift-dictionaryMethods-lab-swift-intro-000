//
//  DictionaryMethods.swift
//  DictionaryMethods
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryMethods {
    
    var starWarsHeroes: [String] = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    var starWarsVillains = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    var starWarsCharacters = [String: [String]]()
    
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    func remove(droid: String) -> Bool {
        var didDroidRemove = false
        for (index, droidname) in starWarsDroids.enumerated() {
            if droidname == droid {
                starWarsDroids.remove(at: index)
                didDroidRemove = true
            }
        }
        return didDroidRemove
    }

    func createStarWarsCharacters() {
        starWarsCharacters = ["Heroes": starWarsHeroes, "Villains": starWarsVillains, "Droids": starWarsDroids]
    }
    
    func createStarWarsGangsters() {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }

    
    func description(characters: [String:[String]])-> String {
        var sentence = "--Star Wars Characters--"
        for (category, namelist) in characters {
            sentence += "\n \(category.uppercased()) \n"
            var count = 0
            for name in namelist {
                sentence += "\(count+1). \(name)\n"
                count += 1
            }
        }
        return sentence
    }
  
    
    func addHearts() {
        for (key, names) in starWarsCharacters {
            var nameWithHeart = String()
            var namesWithHearts = [String]()
            for name in names {
                nameWithHeart = name.replacingOccurrences(of: "o", with: "❤️")
                namesWithHearts.append(nameWithHeart)
            }
            starWarsCharacters.updateValue(namesWithHearts, forKey: key)
        }
    }
    
    
    
    
    
}
