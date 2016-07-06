//: [Go Back](@next)

//: Question 1
var starWarsHeroes = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]




//: Question 2
var starWarsVillains = ["Darth Vader", "Emperor Palpatine"]




//: Question 3
var starWarsDroids = ["R2-D2", "C-3P0", "IG-88", "BB-88"]




//: Question 4
starWarsVillains.append("Kylo Ren")




//: Question 5
starWarsDroids.removeAtIndex(2)




//: Question 6
var starWarsCharacters = [
    "Heroes": starWarsHeroes,
    "Villains": starWarsVillains,
    "Droids": starWarsDroids,
]




//: Question 7
var starWarsGangsters = ["Watto", "Jabba the Hutt"]




//: Question 8
starWarsCharacters["Gangsters"] = starWarsGangsters




//: Question 9
for key in starWarsCharacters.keys {
    print(key)
}




//: Question 10
print(starWarsCharacters.count)




//: Question 11
if starWarsCharacters.isEmpty {
    print("The dictionary is empty!")
} else {
    print("There are \(starWarsCharacters.count) items in the dictionary.")
}




//: Question 12
var starWarsJedi = ["Yoda", "Obi-Wan Kenobi", "Mace Windu"]




//: Question 13
if starWarsCharacters.updateValue(starWarsJedi, forKey: "Jedi") == nil {
    print("Added Jedi key to dictionary")
} else {
    print("Updated Jedi key")
}




//: Question 14
if starWarsCharacters.removeValueForKey("Bounty Hunters") != nil {
    print("Removed Bounty Hunters")
} else {
    print("Bounty Hunters did not exist")
}




//: Question 15
if var jedi = starWarsCharacters["Jedi"] {
    jedi.append("Aayla Secura")
    starWarsCharacters["Jedi"] = jedi
}

if let jedi = starWarsCharacters["Jedi"] {
    print(jedi)
}




//: Question 16
if let heroes = starWarsCharacters["Heroes"] {
    for hero in heroes {
        print(hero)
    }
}
