import UIKit

//classes are very similar to structs. Classes are for data, structs exclusively for UI

class Employee {
    var hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func hoursWorked() -> Void {
        print("I will work \(hours) hours today.")
    }
}


class Developer: Employee {
    func work() {
        print("I worked on this for \(hours) hours")
    }
}



var me = Developer(hours: 10)


me.work()
me.hoursWorked()


//to override a parent classes built in method, you can use override keyword


class Manager: Employee {
    
    override func hoursWorked() {
        print("I will supervise for \(hours) hours today.")
    }
    
}

var theBoss = Manager(hours: 8)

theBoss.hoursWorked()


//you can disable inheritance of child classes by marking it as final


final class Owner: Employee {
    func work() {
        print("I am the owner of this company.")
    }
}


var theOwner = Owner(hours: 10)

theOwner.work()

/*
class CoOwner: Owner {
    func iDontWork() -> Void {
        print("This class does not work because class Owner is a FINAL CLASS")
    }
}
*/

//It is good practice to set all classes as final until you need to open the class up for inheritance



//To ADD initializers to classes:


class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    //you must initialize the parent classes properties here as well prior to calling super IF you are adding your own properties
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}


class Truck: Vehicle {
    func vroom() -> Bool {
        true
    }
}


var challenger = Car(isElectric: false, isConvertible: false)


///How to copy classes
///
///
class User {
    var username: String = "Bromein"
    
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}



var user1 = User()
var user2 = user1.copy()
user2.username = "Joe"

user1.username
print(user2.username)


//deinitializer

/*
 1. You dont use func with deinitializer
 2. Deinitializers can never take params
 3. Deinitializers run when the last copy of a class instance is destroyed
 4. Deinitializers are never called directly.
 5. Structs do not have deinitializers
 */

class Enduser {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id)")
    }
    
    deinit {
        print("User destroyed")
    }
}
var endUsers = [Enduser]()

for i in 1...3 {
    let user = Enduser(id: i)
    print("I'm in control \(user.id)")
    endUsers.append(user)
}

endUsers.map { print("Inside map \($0.id)") }


