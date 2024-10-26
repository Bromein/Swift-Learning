import UIKit

/*
 Checkpoint 6 objective:
 create a struct to store information about a car, including its model, number of seats, and current gear, then add a method to change gears up or down. Have a think about variables and access control: what data should be a variable rather than a constant, and what data should be exposed publicly? Should the gear-changing method validate its input somehow?
 */


struct Car {
    let model: String
    let seats: Int
    let maxGears: Int
    private var gear: Int
    var passengers: [String]
    
    //remember, if private var is in this struct, you must init yourself, otherwise let it be read only to everyone with private(set)
    
    init(model: String, seats: Int, gear: Int, maxGears: Int) {
        self.model = model
        self.seats = seats
        self.gear = gear
        self.maxGears = maxGears
        passengers = [String]()
    }
    
    mutating func changeGears(difference: Int) {
        gear = gear + difference
        
        if gear < 1 {
            gear = 1
            print("Now in gear \(gear).")
        } else if gear > maxGears {
            gear = maxGears
            print("Now in gear \(gear).")
        }
    }
    
    mutating func addPassenger(_ passenger: String) -> Bool {
        if passengers.count < seats {
            passengers.append(passenger)
            return true
        } else {
            print("Full")
            return false
        }
    }
}

var car = Car(model: "Challenger", seats: 5, gear: 1, maxGears: 8)

car.changeGears(difference: 50)  // -> gear is now 8
car.changeGears(difference: -10) // gear is now 1


car.addPassenger("AJ")
car.addPassenger("Joe")
car.addPassenger("Jill")
car.addPassenger("Charles")
car.addPassenger("Mike")
//we've hit capacity and are full.
car.addPassenger("Miller")

print(car.passengers)
