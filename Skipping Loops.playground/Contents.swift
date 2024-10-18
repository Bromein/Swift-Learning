import UIKit

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

//If you call continue inside that loop body, Swift will immediately stop executing the current loop iteration and jump to the next item in the loop, where it will carry on as normal.
for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print(filename)
}
print("I broke out")


//breaks exits a loop immediately and skips all remaining iterations. 
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)
