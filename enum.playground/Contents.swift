import UIKit

//enum Weekday {
//    case monday
//    case tuesday
//    case wednesday
//    case thursday
//    case friday
//}
// above can be shorthanded to:

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.wednesday

//When referencing an enum, once it has been assigned swift will know you are talking about the Weekday, and you can skip the enum and only include the .day
day = .thursday
day = .friday

print(day) // prints friday


enum Hour {
    case one, two, three, four, five, six
}

var time = Hour.one
time = .two
time = .three
time = .four
time = .five
time = .six



