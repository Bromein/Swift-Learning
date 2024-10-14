import UIKit


//Type inference is being applied below, we've assigned it a string, so Swift is now saying this variable will be a string and must remain a string.
var greeting = "Hello, playground"

//We can however annotate what type a variable may be

//strings
var goodbye: String = "Goodbye, playground"

//doubles
var pi: Double = 3.141

//integers
var myNumber: Int = 100

//booleans
var isAuthenticated: Bool = true

//arrays
var albums: [String] = ["The Beatles", "The Rolling Stones", "The Who"]

//dictionary
var user: [String: String] = ["name": "John", "age": "25"]

//set
var mySet: Set<String> = Set([
    "Hello",
    "World",
])


//The above is not necessary when you are already giving values as swift will infer it

//Type annotated since it is an empty array
//all the below are valid, you can use any you'd like:
var albums2: [String] = [String]()
var albums3: [String] = []
var albums4 = [String]()


//enums do not require type annotation as you are setting the type on the first use

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark

let username: String
//username = 25 -> Error, it's already been annotated as a String
username = "Howard"
//username = "Jim" -> Error, let is constant, can only be assigned once.
print(username)

//Try to let Swift do type inferrence 

