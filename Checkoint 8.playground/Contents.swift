import UIKit

/*
 Your challenge is this: make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it. Your protocol should require the following:
 
 A property storing how many rooms it has.
 A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
 A property storing the name of the estate agent responsible for selling the building.
 A method for printing the sales summary of the building, describing what it is along with its other properties.
 
 
 */

protocol Building {
    var type: String { get }
    var rooms: Int { get }
    var cost: Int { get set }
    var estateAgent: String { get set }
    func printSalesSummary()
}

extension Building {
    func printSalesSummary() {
        print("This is an \(type) with \(rooms) rooms and a cost of \(cost).")
    }
}

struct House: Building {
    var type: String = "House"
    var rooms: Int
    var cost: Int
    var estateAgent: String
    
    
}

struct Office: Building {
    var type: String = "Office"
    var rooms: Int
    var cost: Int
    var estateAgent: String
    
    
}

let myOffice = Office(rooms: 3, cost: 500_000, estateAgent: "Aztec")
let myHome = House(rooms: 4, cost: 250_000, estateAgent: "JillyBilly")

myOffice.printSalesSummary()
myHome.printSalesSummary()
