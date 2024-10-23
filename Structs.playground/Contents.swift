import UIKit

//swift structs let us create our own custom, complex data types, complete with their own variables and functions. Think of objects in JS

struct Person {
    let hairColor: String
    let eyeColor: String
    var age: Int
    let name: String
    
    func sayHello() {
        print("Hello")
    }
    //if a function reads only and doesn't modify the object, you can have a normal function, but if the method modifies the object in any form it must use the keyword "mutating" before the function call.
    mutating func birthdayTime() {
        age += 1
    }
    
    
}

var myself = Person(hairColor: "brown", eyeColor: "brown", age: 30, name: "AJ")


print(myself.hairColor)
print(myself.age)
myself.birthdayTime()
print(myself.age)




struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    var position: String
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
    
    var getPromotion: String {
        get {
            position
        }
        set {
            position = newValue
        }
    }
    
    
}

//var archer = Employee(name: "Archer", vacationAllocated: 14)
//
//archer.vacationTaken += 4
//archer.vacationRemaining = 5

var aj = Employee(name: "AJ", vacationAllocated: 7, position: "Junior Developer")


aj.getPromotion = "Senior Developer"

print(aj)


//Property observers


struct Game {
    
    var score: Int = 0 {
        didSet {
            //swift will store the original value in a special variable named oldValue
            print("Score has been updated to \(score)")
        }
    }
}


struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is \(contacts)")
            print("New value will be \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old values: \(oldValue)")
        }
    }
}


var app = App()

app.contacts.append("AJ")
app.contacts.append("Sam")
app.contacts.append("Charlie")



struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...100)
    }
}

var player1 = Player(name: "Aj")

player1.number




struct newGame {
    var difficulty: String
    var score: Int = 0 {
        willSet {
            print("about to update the score")
        }
        
        didSet {
            print("Score has been updated to \(score) from \(oldValue)")
        }
    }
        
        
    init(difficulty: String) {
        self.difficulty = difficulty
        score = 0
    }
    //use funcs when actual work is being done, and computed properties when simple get and set
//    mutating func increaseDifficulty(_ newDifficulty: String) {
//        difficulty = newDifficulty
//    }
    

    }

var re = newGame(difficulty: "easy")
re.score = 100
re.difficulty




