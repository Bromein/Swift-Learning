import UIKit

func rollDice(sides: Int, count: Int) -> [Int] {
    var rolls = [Int]()
    
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    return rolls
}

rollDice(sides: 8, count: 10)


//swift can have same name functions if there are different params

func saySomething(hi: String) -> String {
    "Hello!"
}

func saySomething(bye: String) -> String {
    "Bye!"
}

saySomething(hi: "Hello")
saySomething(bye: "Bye!")


//you can bypass mandatory params like below using _:
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLOOOoO"
let result = isUppercase(string) // returns false


//without using _ it would looke like:
/*
 func isUppercase(string: String) -> Bool {
     string == string.uppercased()
 }

 let string = "HELLO, WORLD"
 let result = isUppercase(string: string)
 
 and here we he have to call isUppercase with a redundant string: string
 */


//func printTimesTables(number: Int) {
//    for i in 1...12 {
//        print("\(i) x \(number) is \(i * number)")
//    }
//}
//
//printTimesTables(number: 5)


func printTimesTables(_ number: Int) {
    for i in 1...12 {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(5)


//what would make even more sense would be to write something like this:

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

//to use reserved words internally like 'for' or 'while' we can pass it a second param name (first will be external, second will be internal) in the func declaration as seen above and below
func justUseWhile(while string: String) {
    print(string)
}

//now we can call juseUseWhile(while)


justUseWhile(while: "Helloo")
 

func isLowercased(_ string: String) -> Bool {
    string == string.lowercased()
}

let string2 = "hello"
let result2 = isLowercased(string2)
print(result2)

