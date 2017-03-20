# Dictionaries: Methods

## Instructions

![](http://i.imgur.com/kXXcO1R.jpg?1)

**1.** Create a variable, `starWarsHeroes` of type [`String`] with a default value. The following `String` values should be contained in this `Array` variable.
* Luke Skywalker
* Princess Leia
* Han Solo
* Rey

**2.** Right below where you created the `starWarsHeroes` variable, you should create _another_ variable, `starWarsVillains` of type [`String`] which contains the following values:
* Darth Vader
* Emperor Palpatine

**3.** Below where you created the `starWarsHeroes` variable, create another variable, `starWarsDroids` of type [`String`] that contains the following values:
* R2-D2
* C-3P0
* IG-88
* BB-8

**4.** Create a function, `addKyloRen()` which takes in no arguments and returns no values. In your implementation of this function, you should add "Kylo Ren" to the `starWarsVillains` array you created above.

![](http://i.imgur.com/azURyRS.jpg?1)

**5.** Create a function, `remove(droid:)` which takes in one argument labeled `droid` of type `String`. This functions return value is a `Bool`. In your implementation of this function, you should look to find the index of the item to be deleted (the `droid` variabled passed in) and then remove that item from the `starWarsDroids` variable.  After doing so, the funtion should return `true`. If you're attempt of finding the index of the item fails in that you can't remove a droid that doesn't exist in the array, then return `false`.

For example, lets assume that our `starWarsDroids` array contains the following values, "R2-D2", "C-3P0", "IG-88", and "BB-8".

If we were to then call on this function like so:  

```swift
remove(droid: "Blooper")
// false

remove(droid: "R2-D2")
// true
```

![](http://i.imgur.com/Ui8RPf9.jpg?1)

The `starWarsDroids` array should now contain "C-3P0", "IG-88", and "BB-8". 

**6.** Below where you created the `starWarsDroids` variable--create another variable, `starWarsCharacters` of type [`String` : [`String`]] and assign it a default value being an empty `Dictionary`.

Next, create a function, `createStarWarsCharacters()` that takes in no arguments and returns no values. In your implementation of this function, you will be assigning a _new_ value to the `starWarsCharacters` variable you just created.

The new value you should be assigning this variable _must_ adhere to the type of what `starWarsCharacters` is. What is the type of `starWarsCharacters`? It's a `Dictionary` where the keys are of type `String` and the values are of type [`String`], an `Array` of `String`s.

The keys of this `Dictionary` should be the following:
* Heroes
* Villains
* Droids

The values pertaining to each key should be the `Array`s you made in Questions #1-3. You should make sure you assign the correct `Array` to the approrpriate key. Meaning... "Heroes" the key should not pertain to the value `starWarsVillains` as that wouldn't make sense.
 
**7.** In between where you created the `starWarsDroids` and `starWarsCharacters` variables, we will be creating another variable.. `starWarsGangsters` which is of type [`String`]. Assign it a default value where it contains the following values:
* Watto
* Jabba the Hutt

Now you should create another method, `createStarWarsGangsters()` that takes in no arguments and returns no values. In your implementation of this function you should create a new key-value pair to the `starWarsCharacters` `Dictionary`. The key should be "Gangsters" and the value should be the newly made `Array` you made, `starWarsGangsters`.

**8.** Create a function, `description(characters:)` that takes in one argument labeled `characters` of type [`String` : [`String`]]. This function should return back a `String`.

Example: If we were to call on this function, passing it the `starWarsCharacters` `Dictionary`, we should expect that it returns the following `String` value.

`description(characters: starWarsCharacters)`

```swift
--Star Wars Characters--
HEROES
1. Luke Skywalker
2. Princess Leia
3. Han Solo
4. Rey
VILLAINS
1. Darth Vader
2. Emperor Palpatine
GANGSTERS
1. Watto
2. Jabba the Hutt
DROIDS
1. R2-D2
2. C-3P0
3. IG-88
4. BB-8
```

**MAJOR HINTS INCOMING**

Feel free to ignore these hints if you want to make an attempt at tackling this problem first.

What your method signature should look like:

```swift
func description(characters: [String : [String]]) -> String {
       
		
}
```

* In your implementation of this function, first create a variable, `sentence` of type `String` and assign it the value "--Star Wars Characters--".
* Create a for-in loop over the `characters` argument:

```swift
for (type, names) in characters {


}
```

* Within that for-in loop, look to add onto the `sentence` variable you created above.

```swift
`sentence += "\n\(type.uppercased())\n"
```
* Below this line of code you should create _another_ for-in loop of the `names` variable you know how available to you.

**9.** Create a function, `addHearts()` that takes in no arguments and returns no values. At this point, we can assume that our `starWarsCharacters` `Dictionary` is filled with heroes, villains, droids and gangsters.

Lets add some love to their names.

![](http://i.imgur.com/YjoOjE7.jpg?1)

Going through every name in this dictionary, whenever we see the `Character` 'o', we should replace it with the `Character` '❤️'.

For example, the name "Han Solo" should become "Han S❤️l❤️". Also, the name "Watto" will become "Watt❤️".

You should implement this method by first looping over the key-value pairs of the `starWarsCharacters` `Dictionary`, like so.

```swift
for (type, names) in starWarsCharacters {

}
```

In that for-loop, you will have access to a `names` constant which is an array of `String`s. You should go through each name and see if it contains the letter 'o'. If it does, then replace all occurrences of the character 'o' with the character '❤️' for that particular name.

## Solution Video

[![](http://img.youtube.com/vi/Iyeujaeniyo/0.jpg)](https://www.youtube.com/watch?v=Iyeujaeniyo "")

<p class='util--hide'>View <a href='https://learn.co/lessons/swift-dictionaryMethods-lab'>Dictionary Methods Lab</a> on Learn.co and start learning to code for free.</p>
