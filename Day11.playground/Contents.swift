// Protocols
// a way of describing what properties and methods something must have
// a process known as adopting or conforming to a protocol

protocol Identifiable {
    var id: String  { get set }
}

// we can't create instances of that protocol
// but we can create struct that conforms to it

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

var userExample = User(id: "123")
displayID(thing: userExample)

// more example
// protocol allow us to do is treat our data in more general terms
// So, rather than saying "this buy() method must accept a Book object"
// we can say "this method can accept anything that conforms to the Purchaseable protocol"

// code that only work with Book
struct Book {
    var name: String
}

func buy(_ book: Book) {
    print("I am buying \(book.name)")
}
// the func only accept book object, how if we want to buy another thing? like car, house etc

// try to implement protocol

protocol Purchaseable {
    var name: String { get set }
}

struct Book2: Purchaseable {
    var name: String
    var author: String
}

struct Car: Purchaseable {
    var name: String
    var manufacturer: String
}

// create func that accept any kind of Purchaseable
func buy(_ item: Purchaseable) {
    print("I am buying \(item.name)")
}


// Protocol Inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

class MyEmploye: Employee {
    
    // conform from Payable
    func calculateWages() -> Int {
        return 0
    }
    
    // conform from NeedsTraining
    func study() {
        // code
    }
    
    // conform from HasVacation
    func takeVacation(days: Int) {
        // code
    }
}


// Extensions
// extension allow us to add method to existing types, to make them do thing they weren't originally designed to do
// example, add an extension to the Int type
extension Int {
    func squared() -> Int {
        return self * self
    }
}

// now, create an integer. that integer will has a squared() method
let number = 8
number.squared()

// swift does not allow us to add stored properties in extension, you must use computed properties instead
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}




