// Closure
// function that save to variable
// can pass to other functioin as parameters
// here's some work I want you to do at some point, but not necessarily now
// Closures let us wrap up some functionality in a single variable, then store that somewhere. We can also return it from a function, and store the closure somewhere else.

let driving = {
    print("Im driving in my car")
}

// call closure
driving()

// accepting parameters in closure
let drivingWithParam = { (place: String) in
    print("Im going to \(place) in my car")
}

drivingWithParam("Jogja")

// returning value from closure
let drivingWithReturn = { (place: String) -> String in
    return "Im going to \(place) in my car"
}

let message = drivingWithReturn("Jogjah")
print(message)

// returning value, but no parametes
let drivingWithNoParamAndRetungValue = { () -> String in
    return "Im going to some place in my car"
}

let message2 = drivingWithNoParamAndRetungValue()
print(message2)

// closure as parameters
let action = {
    print("this is my action")
}

// function parameter type as () -> Void
func doingMyAction(action: () -> Void) {
    print("hello")
    action()
    print("finished!")
}

doingMyAction(action: action)

// Trailing closure syntax
doingMyAction {
    action()
}
