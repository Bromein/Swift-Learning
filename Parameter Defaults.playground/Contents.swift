import UIKit

//you can set default values for parameters by adding = [defaultvaluehere]
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) = \(i * number)")
    }
}


printTimesTables(for: 5)

printTimesTables(for: 5, end: 5)


func rollDice(sides: Int = 6, times: Int = 1) -> [Int] {
    var rolls = [Int]()
    for _ in 1...times {
        
        var roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    print(rolls)
    return rolls
}

rollDice(sides: 8, times: 6)


/// -------------------TDEE CALC---------------------- some calcs may be skewed due to differing formulas, included topic of this chapter *Default values for parameters*

//convert Lb -> KG
func convertWeight(pounds: Double = 180) -> Double {
    return pounds / 2.205
}

//convert In -> CM
func convertHeight(inches: Double = 180) -> Double {
    return inches * 2.54
}
// Activity Level enum/type
enum ActivityLevel {
    case sedentary, lightlyActive, moderatelyActive
}

//Calc function
func calculateTdee (weight: Double, height: Double, age: Double, activity: ActivityLevel, sex: String) -> Double {
    var bmr: Double = 0
    let kgWeight: Double = convertWeight(pounds: weight)
    let cmHeight: Double = convertHeight(inches: height)
    var tdee: Double = 0
    
    if sex.lowercased() == "male" {
        //perform male bmr calc here
        let weightCalc: Double = 88.362 + (13.397 * kgWeight)
        let heightCalc: Double = 4.799 * cmHeight
        let ageCalc: Double = 5.677 * age
        bmr = weightCalc + heightCalc - ageCalc
    } else if sex.lowercased() == "female" {
        //perform female bmr calc here
        return 0
    }
    
    switch activity {
    case .sedentary:
        tdee = bmr * 1.2
    case .lightlyActive:
        tdee = bmr * 1.375
    case .moderatelyActive:
        tdee = bmr * 1.55
    }
    return round(tdee)
}




//edit as you see fit
calculateTdee(weight: 150, height: 70, age: 20, activity: .lightlyActive, sex: "male")




//Quick Summary with examples:


//We can utilize key words for parameters by utilizing 2 params, we can also set default values:

func timesTable(for number: Int = 5, end: Int = 10) {
    for i in 1...end {
        print("\(number) * \(i) = \(number * i)")
    }
}
timesTable(for: 5, end: 20)


//No params needed, only arguments function, _ is the outside value, string is the inside value, and String is the type
func exciteString(_ string: String) -> String {
    string + "!!!"
}
exciteString("Hello")

//if a function does not return anything, you can take away the '-> TYPE' functions are not required to define a return type

func weDontReturn(_ string: String) {
    print("Hi, I'm just here. \(string)")
}
weDontReturn("AJ")



