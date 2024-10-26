import UIKit


//protocols are like contracts in swift, bare requirements for any struct that follows it

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}


struct Bicycle: Vehicle {
    let name: String = "Bicycle"
    var currentPassengers: Int = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm driving distance: \(distance)")
    }
    
    func openSunroof() {
        print("Its a nice day")
    }
}

//using this its stating car conforms to the vehicle protocol
struct Car: Vehicle {
    let name: String = "Car"
    var currentPassengers: Int = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving distance: \(distance)")
    }
    
    func openSunroof() {
        print("Its a nice day")
    }
}


func commute(distance: Int, using vehicle: Car) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow I'll try a different vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    vehicles.map {
        print($0.estimateTime(for: distance))
    }
}

var bicycle = Bicycle()
var audi = Car()
var bmw = Car()

//
//var carArr = [bicycle, audi, bmw]


getTravelEstimates(using: [bicycle, audi, bmw], distance: 300)
