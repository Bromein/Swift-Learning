import UIKit

//func greetUser() {
//    print("Hi there!")
//}
//
//greetUser()
//
//var greetCopy = greetUser
//greetCopy()
//
//
////closure expression, you can add params AFTER the opening curly brace
//let sayHello = { (name: String) -> String in
//    "Hi there! \(name)"
//}
//
//sayHello("AJ")
//


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}

let sortedTeam2 = team.sorted(by: captainFirstSorted)
print(sortedTeam2)


//alternatively we can make the above func into a closure
let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})
print(captainFirstTeam)

//Swift already knows we will provide a string to a and b, and we will return a boolean
let sorted = team.sorted(by: { a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
    return a < b
})

// We can go a step further and remove the parens
let sortedSmall = team.sorted { a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
    return a < b
}

// and further..
let sortedEvenSmaller = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    return $0 < $1
}
 




//lets do it again with ints
func addTwoFunc (a: Int, b: Int) -> Int {
    a + b
}
let added = addTwoFunc(a: 1, b: 1)
let addTwo = { (a: Int, b: Int) -> Int in
    a + b
}
addTwo(1, 2)


// filter map and reduce

let tOnly = team.filter { $0.hasPrefix("T") }

print(tOnly)


let uppercasedTeam = team.map { $0.uppercased() }
print(uppercasedTeam)
