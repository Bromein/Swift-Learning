import UIKit

//Strings

var myString = "Tomorrow is the day of the week that is the same as yesterday"


//Escape characters, must utilize \ before adding "

var secondString = "I would really love to do that \"thing\""


//Multi line strings must be started with """ see below:


let myMultiLineString = """
Hello there
I am a
Multi line string
"""

// String types have built in methods
let stringCount = myString.count
print(stringCount)
print(myString.uppercased())


//hasPrefix checks start of string for match that you provide in args
//True
myString.hasPrefix("Tomorrow")


//False
myString.hasPrefix("is the day")

// method hasSuffix checks end of string for match that you provide in args
//True
myString.hasSuffix("same as yesterday")


