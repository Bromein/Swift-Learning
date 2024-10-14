import UIKit

//Arrays let us store data values


var myArray = ["red", "green", "blue"]

//Access green from my array with myArray[1]

myArray.append("yellow")
myArray.append("orange")
myArray.append("purple")

print(myArray[1])
print(myArray)


//Just like with variables, you can't mix data types in arrays, for example if you were to append the number 41  myArray.append(41) will return an error as it is expecting a string.

//You can initialize an empty array by doing the following:

var scores = Array<Int>()

scores.append(21)
scores.append(55)

print(scores)

//An alternative way to initialize an empty array is by utilizing:

var albums = [String]()

albums.append("The Beatles")
albums.append("The Rolling Stones")
albums.append("The Who")

print(albums)


// There are several methods we can use that are built in with arrays:

print(albums.count) // -> Returns the amount of items inside of an array

print(albums.contains("The Beatles")) // -> Returns true if arg is contained inside given array

print(albums.remove(at: 2)) // -> Removes 'The Who' and returns it in print

albums.removeAll() // -> removes all items within the array

albums.sort() // -> Returns a new array sorted alphabetically

albums.reversed() // -> Returns a new array but reversed

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)





