import UIKit

protocol View { }

func getRandomNumber() -> some Equatable {
    Double.random(in: 1...5)
}

//extensions allow you to add functionality to types


extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}



var myString2 = "   Hello  "
//let myTrimmedString = myString.trimmed()
myString2.trim()
print(myString2)


let multiString = """
lorem ipsum times 100 years
for as many times as you can
then i will process four times of it
"""


multiString.lines.forEach { print($0) }




