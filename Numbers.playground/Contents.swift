import UIKit


//ints

let myNumber = 100
let myBigNumber = 10000000000

//you can utilize underscores to break up big numbers, however, swift does not care whether or not you do 10_000_000 or 10_0_0_0_0_0 it will still come out as 10,000,000

let myScoredNumber = 10_000_000
let myOtherScoredNumber = 10_0_0_0000


print(myScoredNumber)
// -> 10,000,000
print(myOtherScoredNumber)
// -> 10,000,000


// Math

let score = 0
let higherScore = score + 1
let lowerScore = score - 1
let doubleScore = score * 2
print(score)

// Just like other languages, you can just reassign if you declare the int as a var instead of let

var counter = 0
counter += 5
print(counter)
//scoreboard is now 5

counter *= 2
print(counter)
//counter is now 10

//Like strings, int objects have methods built in
let myNum = 110
let isItMultiple = 100.isMultiple(of: 6)
print(isItMultiple) // -> False
print(myNum.isMultiple(of: 10)) // -> True


/// Doubles, floats

let myDouble = 10.0
let myInt = 1

// myInt + myDouble produces an error due to type safety in Swift, you can convert in swift, see below type coersion
myInt + Int(myDouble)
Double(myInt) + myDouble
