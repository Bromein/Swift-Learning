import UIKit

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string: String = "123456"


do {
    let result = try checkPassword(string)
    print(result)
} catch PasswordError.short {
    print("your password is too short")
} catch { PasswordError.obvious
    print("this is an obvious password")
} catch {
    print("There was an error.\(error.localizedDescription)")
}



/* Summary for this chapter:
 
 - Functions reuse code by carving off chunks and giving it a name
 - Functions start with the word func followed by the functions name
 - Functions can accept parameters to control their behaviors
 - You can add custom external parameter names, or use _ to skip it
 - Function parameters can have default values
 - Functions can optionally return a value, but you can return multiple pieces of data from a function using a tuple
 - Functions can throw errors using do, try, and catch.
 */
