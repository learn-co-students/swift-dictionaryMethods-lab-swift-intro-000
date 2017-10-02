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
    var starWarsHeroes : [String] = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"];
    
    var starWarsVillains : [String] = ["Darth Vader", "Emperor Palpatine"];
    
    var starWarsDroids : [String] = ["R2-D2", "C-3P0", "IG-88", "BB-8"];
    
    var starWarsCharacters = [String : [String]]();
    
    var starWarsGangsters = ["Watto", "Jabba the Hutt"];
    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren");
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        var count = 0;
        
        while(count < starWarsDroids.count) {
            if(starWarsDroids[count] == droid){
                starWarsDroids.remove(at: count);
                return true
            } else {
                count += 1;
            }
        }
        return false
    }
    
    
    
    
    // Question #6
    func createStarWarsCharacters() {
        starWarsCharacters["Heroes"] = starWarsHeroes;
        starWarsCharacters["Villains"] = starWarsVillains;
        starWarsCharacters["Droids"] = starWarsDroids;
    }
    
    
    
    // Question #7
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters;
    }
    
    
    
    // Question #8
    func description(characters : [String : [String]]) -> String
    {
        var output = "--Star Wars Characters--\n";
        
        for(type, names) in starWarsCharacters {
            output += type.uppercased() + "\n";
            for(index, name) in names.enumerated() {
                output += "\(index+1). \(name)\n"
            }
        }
        
        return output;
    }
    
    
    
    // Question #9
    func addHearts() {
        for(type, names) in starWarsCharacters {
            
            for(index, name) in names.enumerated() {
                
                starWarsCharacters[type]![index] = name.replacingOccurrences(of: "o", with: "❤️");
                
            }
        }
    }
    
}
