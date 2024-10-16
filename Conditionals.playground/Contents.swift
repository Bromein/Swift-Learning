import UIKit

var greeting = "Hello, playground"
var inProgress = true
var age = 25

//if statement
if inProgress {
    print("Still in progress")
}

//if else with "&&"
if inProgress && age > 20 {
    let message = "You are old enough to drive"
} else {
    let message = "You are not old enough to drive."
}

// if else with || "or" statements, will hit the inside "Hi!" if either of the arguments are true
if inProgress || age > 20 {
    print("Hi!")
} else {
    print("You're not in progress, and youre younger than or equal to 20.")
}

//if else if else
if inProgress && age > 20 {
    let message = "You're in progress, and you're old enough to drive"
} else if inProgress && age <= 20 {
    let message = "Youre in progress, but you can't drive!"
} else {
    let message = "catch all message reached"
}

//nested if statements

var temperature = 75
if temperature < 80 {
    if temperature > 65 {
        print("its a beautiful day")
    }
}


// switch case
enum Weather {
    case sun, rain, wind, snow
}

let forecast = Weather.rain

switch forecast{
case .sun:
    print("It's sunny!")
case .rain:
    print("It's raining cats and dogs")
case .wind:
    print("It's windy!")
case .snow:
    print("Bring your snow boots!")
default:
    print("Have you been outside?")
}



//you can check conditions on enums once it is set by utilizing the .xyz
enum TransportOption {
    case airplane, helicopter, car, train
}

//here we are letting swift know transport will be a variation of the TransportOption enum and we won't have to call TransportOption anymore when referencing it.
let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Fly like the wind!")
} else if transport == .car || transport == .train {
    print("On the road again.")
} else {
    print("Are you going anywhere today?")
}


//ternary ? :  when utilizing ternery if true, it will pull the first value before the semicolon, if false it will take the second value. is this true ? Yes:No

let randomNumber = 51
let greaterThan = randomNumber > 50 ? "Greater than 50" : "Less than 50"


enum Theme {
    case light, dark
}

let theme = Theme.dark
let background = theme == .light ? "White" : "Black"
print(background)
