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
	var starWarsCharacters = [String : [String]]()
	var starWarsGangsters: [String] = ["Watto", "Jabba the Hutt"]
	
	
    // Question #4
	
	func addKyloRen() {
		starWarsVillains.append("Kylo Ren")
	}
	
    
    // Question #5
  
	func remove(droid: String) -> Bool {
		if let index = starWarsDroids.index(of: droid) {
			starWarsDroids.remove(at: index)
			return true
		}
		return false
	}
    
    // Question #6
   
	func createStarWarsCharacters() {
		starWarsCharacters["Heroes"] = starWarsHeroes
		starWarsCharacters["Villains"] = starWarsVillains
		starWarsCharacters["Droids"] = starWarsDroids
	}

    // Question #7
   
	func createStarWarsGangsters() {
		starWarsCharacters["Gangsters"] = starWarsGangsters
	}
    
    // Question #8
    
	func description(characters: [String : [String]]) -> String {
		var descrip = "--Star Wars Characters--\n"
		
		var count = 0
		for item in characters {
			descrip += item.key.uppercased() + "\n"
			count = 1
			for each in item.value {
				descrip += "\(count). " + each + "\n"
				count += 1
			}
		}
		
		return descrip
	}
    
    // Question #9
    
	func addHearts() {
		for (type, names) in starWarsCharacters {
			var newNames = names
			for (index, name) in names.enumerated() {
				if name.contains("o") {
					newNames[index] = name.replacingOccurrences(of: "o", with: "❤️")
				}
			}
			starWarsCharacters[type] = newNames
		}
	}
    
}
