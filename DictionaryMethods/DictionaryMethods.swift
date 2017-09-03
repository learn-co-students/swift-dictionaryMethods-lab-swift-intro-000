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
    
    var starWarsHeroes:[String] = ["Luke Skywalker",
        "Princess Leia",
        "Han Solo",
        "Rey" ]
    
    var   starWarsVillains:[String] = ["Darth Vader", "Emperor Palpatine"]
    
    var starWarsDroids:[String] = ["R2-D2",
        "C-3P0",
        "IG-88",
        "BB-8",
        ]
    
    var starWarsGangsters:[String] = ["Watto", "Jabba the Hutt"]
    
    
    var starWarsCharacters:[String:[String]] = [:]
    
    
    
    // Question #4
    func addKyloRen(){
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
  
    func remove(droid:String) -> Bool {
        if let ix = starWarsDroids.index(of: droid){
            starWarsDroids.remove(at: ix)
            return true
        }else{
            return false
        }
        
    }
    
    
    // Question #6
    func createStarWarsCharacters()  {
        starWarsCharacters["Droids"] = []
        starWarsCharacters["Villains"] = []
        starWarsCharacters["Heroes"] = []
        
        for item in  starWarsDroids{
            starWarsCharacters["Droids"]?.append(item)
        }
        
        for item in starWarsVillains{
            starWarsCharacters["Villains"]?.append(item)
        }
        
        for item in  starWarsHeroes{
            starWarsCharacters["Heroes"]?.append(item)        }
        
    }
    
    
    
    // Question #7
   
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = []
        for item in  starWarsGangsters{
            starWarsCharacters["Gangsters"]?.append(item)
        }
    }
    
    
    // Question #8
        func description(characters:[String:[String]])->String{
            
            var out:String = "--Star Wars Characters--\n"
            for (k,v) in characters {
                out += "\(k.uppercased())\n"
                for (c,v) in v.enumerated() {
                    out += "\(c+1). \(v)\n"
                }
            }
            print ("**")
            print (out)
        return out
        }


    
    
    // Question #9
    
//    func addHearts(){
//        for (type, names) in starWarsCharacters {
//            for name in names {
//                <#code#>
//            }
//            
//        }
//    }
    func addHearts(){
        var tmx:[String]
        
        var tx:String
        for (k,v) in  starWarsCharacters{
            tmx = v
            for (ct,item) in v.enumerated() {
                if(item.contains("o")){
                   tx = item.replacingOccurrences(of: "o", with:"❤️" )
                    tmx[ct] = tx
                    
                }
            }
            starWarsCharacters[k] = tmx
        }
    }
    
    
}
