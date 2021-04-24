// function
// modularization with function
// write code that can reuse

// func
func printHelp() {
    let message = "Welcome to my apps"
    print(message)
}

printHelp()


// accepting parameters
func square(number: Int) {
    print(number * number)
}

square(number: 4)

// returning values

func square2(number: Int) -> Int {
    return number * number
}

let squareResult = square2(number: 4)
print(squareResult)

// Parameter label
// parameter for externally when calling the function

func sayHello(to name: String) {
    print("Hello \(name)")
}

sayHello(to: "Sigit")

// omitting parameter labels
// remove external parameter name
func greeting(_ person: String) {
    print("Hello \(person)")
}

greeting("Sigit")

// default parameter value
// add = value after type
func greeting(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello \(person)")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

// called in two ways
greeting("Sigit")
greeting("Sigit", nicely: false)


// Varadic function
// func that accept any number of parameters with the same type
print("Sigit", "Hanafi", "Sigit hanafi")

// just add ... after the type
func printNumber(numbers: Int...) {
    for number in numbers {
        print("number: \(number)")
    }
}

printNumber(numbers: 10, 1, 3, 4, 12, 2)

// writing throwing function
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}
do {
    try checkPassword("halo")
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// INOUT Parameters
// change value that reflect to the original value outside the function
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
print(myNum)
doubleInPlace(number: &myNum)
// myNum params will changed
print(myNum)
