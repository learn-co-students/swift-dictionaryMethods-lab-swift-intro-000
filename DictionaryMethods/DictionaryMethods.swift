//
//  DictionaryMethods.swift
//  DictionaryMethods
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryMethods
{
    
    // Questions #1, #2, #3, #6 and #7
    
    //  1. Create a variable, starWarsHeroes of type [String] with a default value. The following String values should be contained in this Array variable.
    //    Luke Skywalker
    //    Princess Leia
    //    Han Solo
    //    Rey
    
    //  2. Right below where you created the starWarsHeroes variable, you should create another variable, starWarsVillains of type [String] which contains the following values:
    //    Darth Vader
    //    Emperor Palpatine
    
    //  3. Below where you created the starWarsHeroes variable, create another variable, starWarsDroids of type [String] that contains the following values:
    //     R2-D2
    //     C-3P0
    //     IG-88
    //     BB-8
    
    var starWarsHeroes : [String] = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    var starWarsVillains : [String] = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids : [String] = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsGangsters : [String] = ["Watto", "Jabba the Hutt"]
    
    var starWarsCharacters : [String:[String]] = [:]
    
    // Question #4
    
    //  4. Create a function, addKyloRen() which takes in no arguments and returns no values. In your implementation of this function, you should add "Kylo Ren" to the starWarsVillains array you created above.
    
    func addKyloRen()
    {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    // Question #5
    
    //  5. Create a function, remove(droid:) which takes in one argument labeled droid of type String. This functions return value is a Bool. In your implementation of this function, you should look to find the index of the item to be deleted (the droid variabled passed in) and then remove that item from the starWarsDroids variable. After doing so, the funtion should return true. If you're attempt of finding the index of the item fails in that you can't remove a droid that doesn't exist in the array, then return false.
    //    For example, lets assume that our starWarsDroids array contains the following values, "R2-D2", "C-3P0", "IG-88", and "BB-8".
    //    If we were to then call on this function like so:
    //    remove(droid: "Blooper")
    //    // false
    //
    //    remove(droid: "R2-D2")
    //    // true
    //    The starWarsDroids array should now contain "C-3P0", "IG-88", and "BB-8".


    func remove(droid: String) -> Bool
    {
        
        if let index = starWarsDroids.index(of: droid)
        {
            starWarsDroids.remove(at: index)
            return true
        }
        else
        {
            return false
        }
        
    }
    
    // Question #6
    
    //    6. Below where you created the starWarsDroids variable--create another variable, starWarsCharacters of type [String : [String]] and assign it a default value being an empty Dictionary.
    //    Next, create a function, createStarWarsCharacters() that takes in no arguments and returns no values. In your implementation of this function, you will be assigning a new value to the starWarsCharacters variable you just created.
    //    The new value you should be assigning this variable must adhere to the type of what starWarsCharacters is. What is the type of starWarsCharacters? It's a Dictionary where the keys are of type String and the values are of type [String], an Array of Strings.
    //    The keys of this Dictionary should be the following:
    //    Heroes
    //    Villains
    //    Droids
    //    The values pertaining to each key should be the Arrays you made in Questions #1-3. You should make sure you assign the correct Array to the approrpriate key. Meaning... "Heroes" the key should not pertain to the value starWarsVillains as that wouldn't make sense.
    
    func createStarWarsCharacters()
    {
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
        
    }
    
    
    // Question #7

    //    7. In between where you created the starWarsDroids and starWarsCharacters variables, we will be creating another variable.. starWarsGangsters which is of type [String]. Assign it a default value where it contains the following values:
    //    Watto
    //    Jabba the Hutt
    //    Now you should create another method, createStarWarsGangsters() that takes in no arguments and returns no values. In your implementation of this function you should create a new key-value pair to the starWarsCharacters Dictionary. The key should be "Gangsters" and the value should be the newly made Array you made, starWarsGangsters.
    
    func createStarWarsGangsters(){
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    // Question #8
    
    //    8. Create a function, description(characters:) that takes in one argument labeled characters of type [String : [String]]. This function should return back a String.
    //    Example: If we were to call on this function, passing it the starWarsCharacters Dictionary, we should expect that it returns the following String value.
    //    description(characters: starWarsCharacters)
    
    func description(characters: [String : [String]]) -> String
    {
        var sentence = "--Star Wars Characters--"
     
        for (types, names) in characters
        {
            sentence += "\n \(types.uppercased())"
            
            for (index, name) in names.enumerated()
            {
                sentence += "\n \(index + 1). \(name)"
            }
        }
        return sentence
    }
    
    
    // Question #9
    
    //    Create a function, addHearts() that takes in no arguments and returns no values. At this point, we can assume that our starWarsCharacters Dictionary is filled with heroes, villains, droids and gangsters.
    //    Lets add some love to their names.
    //    Going through every name in this dictionary, whenever we see the Character 'o', we should replace it with the Character '❤️'.
    //    For example, the name "Han Solo" should become "Han S❤️l❤️". Also, the name "Watto" will become "Watt❤️".
    //    You should implement this method by first looping over the key-value pairs of the starWarsCharacters Dictionary, like so.
    //    for (type, names) in starWarsCharacters {
    //
    //    }
    //    In that for-loop, you will have access to a names constant which is an array of Strings. You should go through each name and see if it contains the letter 'o'. If it does, then replace all occurrences of the character 'o' with the character '❤️' for that particular name.

    func addHearts()
    {
    
        for (type, names) in starWarsCharacters
        {
            var newNames = names
            
            for (index, name) in newNames.enumerated()
            {
                if name.contains("o"){
                    let newName = name.replacingOccurrences(of: "o", with: "❤️")
                    newNames[index] = newName
                }
            }
            starWarsCharacters[type] = newNames
        }
    }
}







