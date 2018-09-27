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
    var starWarsHeroes = ["Luke Skywalker","Princess Leia","Han Solo","Rey"]
    var starWarsVillains = ["Darth Vader","Emperor Palpatine"]
    var starWarsDroids = ["R2-D2","C-3P0","IG-88","BB-8"]
    var starWarsGangsters = ["Watto","Jabba the Hutt"]
    var starWarsCharacters = [String:[String]]()
    // Question #4
    func addKyloRen(){
        starWarsVillains.append("Kylo Ren")
    }
    // Question #5
    func remove(droid: String) -> Bool{
        if  let index = starWarsDroids.index(of: droid){
            starWarsDroids.remove(at: index)
            return true
        }else{
            return false
        }
    }
    // Question #6
    func createStarWarsCharacters(){
        starWarsCharacters = [
            "Heroes" : starWarsHeroes,
            "Villains" : starWarsVillains,
            "Droids" : starWarsDroids
        ]
    }
    // Question #7
    func createStarWarsGangsters(){
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    // Question #8
    func description(characters: [String : [String]]) -> String {
        var sentence = String()
        for (type, names) in  starWarsCharacters {
            sentence += "\n\(type.uppercased())\n"
            for (index,name) in names.enumerated() {
                sentence += "\(index + 1). \(name)\n"
            }
        }
        return sentence
    }
    // Question #9
    func addHearts(){
        for (key, value) in starWarsCharacters {
            var nameWithHeart = String()
            var namesWithHearts = [String]()
            for name in value {
                nameWithHeart = name.replacingOccurrences(of: "o", with: "❤️")
                namesWithHearts.append(nameWithHeart)
            }
            starWarsCharacters.updateValue(namesWithHearts, forKey: key)
        }
    }
}




