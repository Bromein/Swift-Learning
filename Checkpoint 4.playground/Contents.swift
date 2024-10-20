import UIKit

/*
 
 With functions under your belt, it’s time to try a little coding challenge. Don’t worry, it’s not that hard, but it might take you a while to think about and come up with something. As always I’ll be giving you some hints if you need them.

 The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:

 You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
 If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
 You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
 If you can’t find the square root, throw a “no root” error.
 
 */


//Create error unum
enum RootError: Error {
    case outOfBounds, noRoot
}

//Create sqrt func
func getSquareRoot(for number: Int) throws -> Int {
    //check for our errors
    if number < 1 || number > 10_000 {
        throw RootError.outOfBounds
    }
    
    var sqRt: Int = 0
    //loop through 1...number, if i * i == number, set sqrt var to i
    for i in 1...number {
        if i * i == number {
            sqRt = i
        }
    }
    
    //last check before our global return, if 0 throw no root error, otherwise, return the sqRt
    if sqRt == 0 {
        throw RootError.noRoot
    } else {
        return sqRt
    }
}

//do try catch
do {
    try getSquareRoot(for: 9801)
} catch {
    print("Error: \(error)")
}


