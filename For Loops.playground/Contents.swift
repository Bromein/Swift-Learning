import UIKit

var greetings = Set(["Hello there!", "Hi!", "Adios,"])

//for in with a data-set
for greeting in greetings {
    print("\(greeting) Bromein!")
}

//for in with a -range- 1...5 will iterate up
for i in 1...5 {
    print(i)
}

//nested loops

for i in 1...10 {
    print("I'm the first loop \(i)")
    for j in 2...11 {
        print("Hi I'm in the second loop! \(j)")
    }
}


// you can also use less than/greater than in for in loops

for i in 1..<10 {
    print(i)
} // Will print UP to 10 but not including, useful for iterating through arrays when there is no last index see below

let myArray = ["hi", "hello", "howdy", "hola"]

for i in 0..<myArray.count {
    print("? \(myArray[i])")
}

//You can also disregard the variable if you don't need it in calculations by replacing with an _

var lyric = "Haters gonna"
for _ in 1...5 {
    lyric += " hate"
}
print(lyric)



//----------------------While loops -------------------------------


var counter = 0

while counter <= 10 {
    print(counter)
    counter += 1
}

let id = Int.random(in: 1...1000)

let amount = Double.random(in: 0...1)

var roll = 0
while roll != 20 {
    //roll new dice to set new number
    roll = Int.random(in: 1...20)
    print("You rolled \(roll)")
}
// if we made it here we hit 20 and broke the condition of the while loop
print("Critical hit!")
