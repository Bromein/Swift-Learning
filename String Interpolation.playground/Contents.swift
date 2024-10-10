import UIKit

var firstHalf = "Hello,"
var secondHalf = "World!"

//Basic way, concat with '+', you can join multiple strings together.
var fullString = firstHalf + secondHalf // -> Returns Hello,World
var fullString2 = firstHalf + " " + secondHalf // -> Returns Hello, World!

print(fullString)
print(fullString2)


//Escape characters and string interpolation
// Just like with strings, we can escape the string and add variables to it with seen below

var name = "Tim"
var greeting = "Hello, \(name)"

print(greeting) // -> Returns Hello, Tim


// Just like with ints and doubles, you can't +/combine them unless you use an escape string, otherwise you'd have to do type coersion first

var age = 25

// greeting = "Hello my name is " + name + "and I am " + age + " years old." -> ERROR, cant combine string and int UNLESS you change the int to a str
greeting = "Hello my name is " + name + " and I am " + String(age) + " years old"

print(greeting)

greeting = "Hello, my name is \(name) and I am \(age) years old." // no issues

print(greeting)
