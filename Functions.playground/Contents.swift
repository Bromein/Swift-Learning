import UIKit

func addTwo(x: Int) {
    print("\(x) + 2 = \(x + 2)")
}

addTwo(x: 5)

//you can add multiple params and args x being the param and the value being the arg

func multiply(x: Int, y: Int) {
    print(x * y)
}
multiply(x: 2, y: 4)


let root = sqrt(150)

print(root)

//to return a value from a function you create, you must use an arrow plus a data type before your opening brace see below:

//Be more excited! function takes a string and returns it, but extra exciting!
func excitedPrint(message: String) -> String {
    return message + "!!!!"
}

excitedPrint(message: "Hello")


//Return your number + 10
func addTen(number: Int) -> Int {
    return number + 10
}

addTen(number: 5)



//Roll a dice
func rollDice() -> Int {
    return Int.random(in: 1...8)
}
let result = rollDice()
print(result)


//
//func compareStrings(first: String, second: String) -> Bool {
//    return first.sorted() == second.sorted()
//}



//if you only have 1 line of code for a function, you don't have to call return:
func compareStrings(first: String, second: String) -> Bool {
    first.sorted() == second.sorted()
}
compareStrings(first: "Hello", second: "Hello")

func getUser() -> (name: String, age: Int) {
    (name: "Aj", age: 30)
}

let userName = getUser()
userName.age


//
func getUser3() -> (firstName: String, lastName: String) {
    (firstName: "Aj", lastName: "Broman")
}

//let user = getUser3()
//let firstName = user.firstName
//let lastName = user.lastName

//this can be simplified to:
// let (firstName, lastName) = getUser3()

//if you don't need both values pulled out of it, you can substitute the unneeded with a ' _ '
let (firstName, _) = getUser3()


print("My name is \(firstName) ")



