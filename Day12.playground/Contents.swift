// We’ve used types such as Int to hold values like 5. But if you wanted to store an age property for users, what would you do if you didn’t know someone’s age?

// You might say “well, I’ll store 0”, but then you would get confused between new-born babies and people whose age you don’t know. You could use a special number such as 1000 or -1 to represent “unknown”, both of which are impossible ages, but then would you really remember that number in all the places it’s used?

// Swift’s solution is called optionals, and you can make optionals out of any type. An optional integer might have a number like 0 or 40, but it might have no value at all – it might literally be missing, which is nil in Swift.

var age: Int? = nil

// if we want to use / store value to it property
age = 38


// Unwrapping - look inside the optional and see what's there
var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Name is nil")
}

// unwrapping optional with guard let
// if it finds nil inside it expects you to exid the function, loop or condition you used it in
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You did not provide a name")
        return
    }
    
    print("Hello, \(unwrapped)")
}

greet(nil)
greet("Sigit")

// force unwrapping
let str = "5"
let num = Int(str)
// it will return optional
// but we know, that its have a value
// then we can use force unwrapping
print(num!)


// Nil Coalescing
// unwraps an optional and returns the value inside if there is one
// if there isn't a value or nil, then a default value is used instead
let nameAgain: String? = nil
let user = nameAgain ?? "Sigit"
print(user)

// optional chaining
// if you want to access something ike a.b.c and b is optional
// you can write a question mark after b, like this a.b?.c
// Swift will check wether b has a value. if its nil the rest of the line will be ignored
// Swift will return nil immediiately
// but if it has a value, it will be unwrapped and execution will continue
let names = ["John", "Paul", "George", "Ringo"]
print(names.first?.uppercased())


// Optional try
// try? will changes throwing function into function that return an optional
// if the function throws an error you will be sent nil as the result
// otherwise you will get the return value wrapped as an optional

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

// standart try
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// optional try
if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("NOOO, dont use that")
}

// try!
// used when you know for sure that the function will not fail
try! checkPassword("pass")
// but when the checkPasseword throw error, it will crash our app



// This is a failable initializer: an initializer that might work or might not. You can write these in your own structs and classes by using init?() rather than init(), and return nil if something goes wrong. The return value will then be an optional of your type, for you to unwrap however you want.

struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}
