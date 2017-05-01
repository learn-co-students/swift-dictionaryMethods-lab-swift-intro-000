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
    
    var starWarsHeroes = [
            "Luke Skywalker",
            "Princess Leia",
            "Han Solo",
            "Rey",
        ];
    
    var starWarsVillains = [
            "Darth Vader",
            "Emperor Palpatine",
        ];
    
    var starWarsDroids = [
            "R2-D2",
            "C-3P0",
            "IG-88",
            "BB-8",
        ];
    
    var starWarsGangsters = [
            "Watto",
            "Jabba the Hutt",
        ];

    var starWarsCharacters: [String: [String]] = Dictionary();
    
    // Question #4
   
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren");
    }
    
    
    
    // Question #5
  
    func remove(droid: String) -> Bool {
        
        if let droidIndex = starWarsDroids.index(of: droid) {
            starWarsDroids.remove(at: droidIndex);
            
            return true;
        } else {
            
            return false;
        }
        
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
    func description(characters: [String: [String]]) -> String {
        
        var characterDescription = "--Star Wars Characters--";
        
        for (type, names) in characters {
            
            characterDescription += "\n\(type.uppercased())";
            
            for (index, name) in names.enumerated(){
                characterDescription += "\n\(index + 1). \(name)";
            }
        }
        
        return characterDescription
    }
    
    
    
    // Question #9
    
    func addHearts() {
        for (type, names) in starWarsCharacters {
            
            var characterHearts:[String] = [];
            
            for name in names{
                let nameHearts = name.replacingOccurrences(of: "o", with: "❤️");
                
                characterHearts.append(nameHearts);
            }
            
            starWarsCharacters[type] = characterHearts;
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
}
