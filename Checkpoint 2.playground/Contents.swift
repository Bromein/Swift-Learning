import UIKit


/*
 Goal:
    Create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.
 */

var pets: [String] = []
//adding in extra steps for practice
pets.append("Charlie")
pets.append("Cinder")
pets.append("Fat Cat")
pets.append("Lexi")
pets.insert("Lexi", at: 1)
print(pets)

//Get the number of items in my array and print to console
var numberOfPets = pets.count
print(numberOfPets)

//Add pets to a set, sets will not hold duplicates
var setPets = Set(pets)


//Quicker way
var fastPets = ["charlie", "cinder", "fat cat", "cinder", "lexi"]
print(fastPets.count)
var fastSetPets = Set(fastPets)
print(fastSetPets)






