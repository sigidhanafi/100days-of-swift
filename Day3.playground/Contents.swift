//Operator overloading

let numberA = 10
let numberB = numberA + 10

let greetingString = "hola"
let nameString = "Sigit"

let greetingComplete = greetingString + nameString
//error
//let greetingCompleteB = greetingString - nameString

//overloading to joining an array
let arrayA = ["Sigit", "Hanafi"]
let arrayB = ["Naren", "Lita"]
let arrayC = arrayA + arrayB
print(arrayC)

// error
//let arrayC = arrayA - arrayB


// compound operator
var score = 95
score -= 5
print(score)

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"
print(quote)

//comparison operator
let firstScore = 6
let secondScore = 4

firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore >= secondScore

// if else, if else if else

// ternary operator
let firstCard = 11
let secondCard = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

//switch case
let weather = "snow"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
    // will execution next case (always)
    fallthrough
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

// Range operator
let scoreB = 85

switch scoreB {
case 0..<50:
    print("You failed badly.")
case 50..<85: // 50, 51, ... 84
    print("You did OK.")
case 85...100: // 85, 86, ... 100
    print("You did OK.")
default:
    print("You did great!")
}
