import UIKit

//We've been using these the entire time

//
/*
 - Always use let if you don't intend for the data to change, if the data will change however, utilize var
 - Integers and doubles cant be added unless coercion Int(myDouble) + myInt
 - To add a number to a string, you can use escape characters i.e. "Hello I am \(age) years old"
 - Booleans (true and false) can be used to store state, flip booleans with '!' toggle with the method Boolean.toggle()
 */

//String interpolation
var age = 25
var hello = "Hello I am \(age) years old."

//Booleans
var inProgress = false
inProgress = !inProgress
inProgress.toggle()

//Integers and Doubles
var myInt = 25
var myDouble = 25.0
//Can't be added together unless converted
var sum = Int(myDouble) + myInt
var sum2 = Double(myInt) + myDouble




