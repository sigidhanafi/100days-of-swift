// ARRAY
var numberOfArray = [1, 2, 3, 4, 5]
var colors = ["red", "green", "blue"]

print(numberOfArray)
print(colors)
print(colors[2])


// SET
// - unordered
// - unique
// - cannot accest value by index
var colorsSets = Set(["green", "blue", "red"])
print(colorsSets)
colorsSets.contains("red")
colorsSets.capacity
colorsSets.count
colorsSets.insert("black")
print(colorsSets)
colorsSets.remove("black")
print(colorsSets)

// sets value are unique
colorsSets.insert("green")
print(colorsSets)

// TUPLES
// - fix in size, can't add or remove item
// - can't change tuple type
// - can change tuple value
// - can access item by using numerical position or by naming them

var nameTuple = (first: "Sigit", last: "Hanafi")
print(nameTuple.first)
print(nameTuple.0)
print(nameTuple)

nameTuple.first = "Hanafi"
nameTuple.last = "Sigit"
print(nameTuple)

var peopleTuple = (name: "Sigit", age: 20)
print(peopleTuple)


// DICTIONARY
// - array, but the key can set with string or other
// dictionaries let us choose a “key” that identifies the item
let dictionaryResult: [String: Int] = [
    "Sigit": 10,
    "Hanafi": 2,
    "Another": 1
]

print(dictionaryResult)

print(dictionaryResult["Sigit", default: 1])
print(dictionaryResult["nama", default: 1])


//ENUM
enum Result {
    case failed
    case success
}

print(Result.failed)

//ENUM associate value
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talkingFootball = Activity.talking(topic: "football")
print(talkingFootball)

// access associate value in enum
let dataActivity = Activity.running(destination: "gelora bung karno")

switch dataActivity {
case let .running(destination):
    print(destination)
default:
    print("another")
}

// enum raw value
enum PlanetInt: Int {
    case mercury        // will start from 0
    case venus
    case earth
    case mars
}

print(PlanetInt.mercury.rawValue)

let planetEarth = PlanetInt(rawValue: 2)

switch planetEarth {
case .earth:
    print("Eartttth")
default:
    print("default")
}

// enum, set the value
enum PlanetInt2: Int {
    case mercury = 1  // raw value = 1
    case venus // raw value = 2
    case earth // raw value = 3
    case mars // raw value = 4
}

print(PlanetInt2.mercury.rawValue)
print(PlanetInt2.earth.rawValue)
