// Struct part two
// Initializer
// All struct come with one by default
// this ask you to provide a value for each property
// its called memberwise initializer

struct User {
    var username: String
}

// call init
var sigit = User(username: "sigidhanafi")

// we can provide our own initializer to replace the default one
struct User2 {
    var username: String
    
    init() {
        username = "Annonymous"
        print("creating a new user")
    }
}

// custom init in extension
struct User3 {
    var username: String
    var yearActive = 0
}

extension User3 {
    init() {
        self.username = "sigidhanafi"
        print("creating init from extension")
    }
}

// init with memberwise initializer
let user31 = User3(username: "sigidhanafi")

// init with custom initializer
let user32 = User3()


// Lazy properties
// swift lets you create some properties, only when they are needed

struct FamilyTree {
    init() {
        print("creating family tree!")
    }
}

struct Person {
    var name: String
    var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var sigitHanafi = Person(name: "Sigit")
// if we init struct person, it will always create all property
// it will print creating family tree!

// but if we make the familyTree property as lazy var
// it will only init familyTree property if it needed only
struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var sigitHanafi2 = Person2(name: "Sigit")
// the familyTree property will not init at this point

// only init when it needed like this
sigitHanafi2.familyTree

// Static properties
// share specific properties and methids across all instances
struct Student {
    var name: String
    static var classSize = 0
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed = Student(name: "Ed")
print(Student.classSize)
let taylor = Student(name: "Taylor")
print(Student.classSize)


// access control
// lets us to restrict which code can use properties and methods
// some times, we need to stop people to reading a property directly

