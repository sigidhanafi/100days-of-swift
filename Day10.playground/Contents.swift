// Class
// struct vs class
// 1. class never come with a memberwise initializer
//      you have properties, and you must always create your own initializer

// example
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let myDog = Dog(name: "name", breed: "breed")


// 2. one class can be build di atas (inherit from) other class, gaining its properties and methods

// subclass
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

// overriding method
// example
class Dog2 {
    func makeNoise() {
        print("Woof!")
    }
}
// Poodle2 will inherit the makeNoise() method
class Poodle2: Dog2 {
    
}

let poppy = Poodle2()
// it will call method from parent class
poppy.makeNoise()

// but we can override the method
class Poodle3: Dog2 {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy3 = Poodle3()
poppy3.makeNoise()

// Final Classes
// no other class can inherit from it class
// this mean, they can override your methods in order to change your behavior they need to use your class the way it was written
final class Dog4 {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// it will show error in Xcode
// inheritance from a final class
//class Poodle4: Dog4 {
//
//}

// 3. class is reference type, struct is value type
//      copies struct are always unique
//      copies class actually point to the same shared  data

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Taylor"

print(singerCopy.name)
print(singer.name)
// it will print same value, because the object point at the same memory
// it will different if a Singer is a struct


// 4. classes have deinitializers, methods that are called when an instance of the class is destroyed, but structs do not

class Person2 {
    var name = "Sigit"
    
    init() {
        print("\(name) is alive")
    }
    
    func printGreeting() {
        print("Hello, Im \(name)")
    }
    
    deinit {
        print("destroyed")
    }
}

for _ in 1...3 {
    let person = Person2()
    person.printGreeting()
}

// 5. variable properties in constant classes can be modified freely, but variable properties in constant structs cannot


