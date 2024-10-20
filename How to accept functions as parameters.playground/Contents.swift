import UIKit

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
    
}

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

var newRolls = makeArray(size: 25, using: generateNumber)
print(newRolls)


func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("Starting first work")
    first()
    
    print("Starting second work")
    second()
    
    print("Starting third work")
    third()
    
    print("Done")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
