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
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    var starWarsCharacters:[String : [String]] = [:]
    
    // Question #4
   
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    // Question #5
  
    func remove(droid:String)->Bool {
        var found:Bool = false
        for (index,dname) in starWarsDroids.enumerated() {
            if (dname == droid) {
                starWarsDroids.remove(at: index)
                found = true
            }
        }
        return found
    }
    
    
    // Question #6
   
    func createStarWarsCharacters() {
        starWarsCharacters = ["Heroes":starWarsHeroes,"Villains":starWarsVillains,"Droids":starWarsDroids]
    }
    
    
    // Question #7
   
    func createStarWarsGangsters() {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    
    // Question #8
    
    func description(characters:[String : [String]]) -> String {
        var tempstr:String = "--Star Wars Characters--\n"
        for (type,names) in characters {
            tempstr += "\(type.uppercased())\n"
            for (index,aname) in names.enumerated() {
                tempstr += "\(index+1). \(aname)\n"
            }
        }
        print(tempstr)
        return tempstr
    }
    
    
    // Question #9
    func addHearts() {
        for (typex, names) in starWarsCharacters {
            print(starWarsCharacters[typex]!)
            for (index, aname) in names.enumerated() {
                print(aname)
                starWarsCharacters[typex]![index] = aname.replacingOccurrences(of: "o", with: "❤️")
            }
            print(starWarsCharacters[typex]!)
        }
        //print(description(characters:starWarsCharacters))
    }
    
    
    
}
