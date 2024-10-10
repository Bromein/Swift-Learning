import UIKit

//booleans are true/false variables.

var inProgress = false
//flip value with '!'
inProgress = !inProgress //inProgress now is true
print(inProgress) // -> True

//this one is small, but awesome. You can TOGGLE booleans right in swift, no need to make a function for this!!!!

inProgress.toggle()
print(inProgress) // False
