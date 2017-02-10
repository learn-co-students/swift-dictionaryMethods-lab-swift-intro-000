    // Questions #1, #2, #3, #6 and #7
    var starWarsHeroes = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    
    var starWarsVillians = ["Darth Vader", "Emporer Palpatine"]
    
    var starWarsDroids = ["R2-D2", "C-3PO", "IG-88", "BB-8"]
    
    var starWarsGangsters = ["Watto", "Jabba the Hutt"]
    
    
    // Question #4
    func addKyloRen() {
        starWarsVillians.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool {
        if starWarsDroids.contains(droid) {
            starWarsDroids = starWarsDroids.filter({ $0 != droid })
            return true
        } else {
            return false
        }
    }
    
   addKyloRen()
    remove(droid: "K2SO")
    remove(droid: "R2-D2")
    print(starWarsDroids)
    
    // Question #6
    var starWarsCharacters: [String : [String]] = [:]
    
    func createStarWarsCharacters() {
        
        
        if starWarsCharacters.isEmpty {
            starWarsCharacters = ["Heroes" : starWarsHeroes, "Villians" : starWarsVillians, "Droids" : starWarsDroids]
        }
    }
    
    func createStarWarsGangsters() {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    
    
    
    
    func description(characters: [String : [String]]) -> String {
        var sentence = "--STAR WARS CHARACTERS--"
        
        for (type, names) in characters {
            sentence += "\n\(type.uppercased())\n"
            for (number, value) in names.enumerated() {
                sentence += "\n\(number + 1). \(value)"
            }
        }
        print(sentence)
        return sentence
        
    }
    
    
    func addHearts() {
        for (type, names) in starWarsCharacters {
            names.
        }
        
    }

    

    