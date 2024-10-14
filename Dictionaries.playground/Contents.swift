import UIKit

//Dictionaries are like Objects in JS with key:value pairs



let myDictionary = [
    "name": "Jill", 
    "age": "30",
    "id": "1",
]

let olympics = [
    2012: "London",
    2016: "Rio",
    2020: "Tokyo",
    
]

//You can set empty dictionaries defining what the key:value pairs data will hold
var heights = [String:Int]()

heights["Yao Ming"] = 229
heights["LeBron James"] = 206
heights["Shaq"] = 206
heights["Kobe"] = 212


//Sets are like arrays and can be made like so:

let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)


//Notice when printing out this set, it can vary in the order. Swift does not care the order in which this data (set) is presented to you and may vary every time, and it can not have duplicate values inside.


//to put data into a set, you do not use append(), you can just use insert() without setting the at: Int since sets do not care for order.
var people2 = Set<String>()
people2.insert("Denzel Washington")
people2.insert("Tom Cruise")
people2.insert("Nicolas Cage")
people2.insert("Samuel L Jackson")
print(people2)

var testPeople = ["Sam"]

testPeople.insert("Denzel", at: 1)


//sets are extremely quick for Swift to navigate through, a set can be millions of values, and it will still be almost instant for finding a certain value when utilizing .contains() whereas a array can take a few minutes depending on how large it is.

