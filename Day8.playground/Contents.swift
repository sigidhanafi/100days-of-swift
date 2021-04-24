// Struct
struct Sport {
    var name: String
}

// init
// auto has init
var tennis = Sport(name: "Tennis")
print(tennis.name)

// update struct property
tennis.name = "Lawn Tennis"
print(tennis.name)

// computed property
struct Sport2 {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}
// olympicStatus is a computed property
// it is depend on other property
// computed property => the value is recomputed every time it's called
// stored property => the value stashed away in some memory to be used later

var chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)
chessBoxing.isOlympicSport = true
// it will recomputed again, with different result because changes value in isOlympicSport
print(chessBoxing.olympicStatus)


// Property observer
// let you run code before or after any property changes
struct Progress {
    var task: String
    
    // I want to print a message for every time amount property changes
    // and print message before the amount change
    var amount: Int {
        willSet {
            print("starting progress count")
        }
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var myProgress = Progress(task: "learn code", amount: 0)
myProgress.amount = 10
myProgress.amount = 20
myProgress.amount = 50
myProgress.amount = 100


// Method, a function inside the struct
struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 100000)
london.collectTaxes()

// Mutating methods
// Swift won't let you write method that change properties, unless you spesifically request it

struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = Person(name: "Ed")
person.makeAnonymous()
print(person.name)
