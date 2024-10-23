import UIKit

/*
 
 With closures under your belt, it’s time to try a little coding challenge using them.

 You’ve already met sorted(), filter(), map(), so I’d like you to put them together in a chain – call one, then the other, then the other back to back without using temporary variables.

 Your input is this:

 let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
 Your job is to:

 Filter out any numbers that are even
 Sort the array in ascending order
 Map them to strings in the format “7 is a lucky number”
 Print the resulting array, one item per line
 
 
 
 */


let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]


//option 1.

func unevenNumbers(_ numbers: [Int]) -> [String] {
    //filter for uneven numbers
    let unevens = numbers.filter { !$0.isMultiple(of: 2) }
    //sort
    let sorted = unevens.sorted()
    //map over and create new array of strings
    let luckyNum = sorted.map { "\($0) is a lucky number" }
    //return the array
    return luckyNum
}

let results = unevenNumbers(luckyNumbers)

for item in results {
    print(item)
}


// option 2.

let luckyNumberArray = luckyNumbers.filter { $0.isMultiple(of: 2) == false }.sorted().map { "\($0) is a lucky number" }

for item in luckyNumberArray {
    print(item)
}


//option 3.


func isOdd(number: Int) -> Bool {
    number.isMultiple(of: 2) == false
}

func luckyNums(number: Int) -> String {
    "\(number) is a lucky number."
}

func printValues(_ string: String) {
    print(string)
}


luckyNumbers.filter(isOdd).sorted().map(luckyNums).forEach(printValues)


///
///

let myClosure = {
    print("Hi")
}

myClosure()

