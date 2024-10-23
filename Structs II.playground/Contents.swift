import UIKit

//private and public properties with internal data using access control


struct BankAccount {
    //utilize 'private' keyword to make var inaccessible from outside the struct, seen below.
//    private var funds = 0
    //there is also fileprivate, which doesnt let anything outside the current file use this var
    fileprivate var ssn: Int
    //there is also public. anyone, anywhere, can use this variable
    public var hasCreditCard: Bool
    //lastly, there is private(set), lets anyone can read this property, but only the internal methods can write
    private(set) var funds: Int
   //again _ before your prop to make it not required for initializing struct
    init(_ ssn: Int) {
        self.ssn = ssn
        hasCreditCard = false
        funds = 0
    }
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}



var account = BankAccount(23423423)
account.deposit(amount: 100)
let success = account.withdraw(amount: 50)


if success {
    print("Withdrew money")
} else {
    print("failed to get your money")
}

//for example, if you left the variable funds public, you could just take it all away from outside the struct, by declaring the variable PRIVATE, it can no longer be accessed outside of the struct.
// account.funds -= 1000 -> Error


//Static properties and methods
//nonisolated for purpose of study materials
struct School {
    nonisolated(unsafe) static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}
School.add(student: "AJ")



struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://yes.com"
    
}

AppData.version

//Swift reads better when there are examples available, so you may use an example prop on a struct


struct Employee {
    let username: String
    let password: String
    static let example = Employee(username: "AJ", password: "t3aCaT49kf")
}

//you can reference any point in the program with

Employee.example


