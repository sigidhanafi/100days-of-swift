
// closure as parameters
// when they accept parameters

// closure with no parameters
let action = {
    print("This is my action")
}

// use closure as param, with no paramaters
func doMyAction(action: () -> Void) {
    print("preparation")
    action()
    print("finish")
}

doMyAction(action: action)

// using closure as param, when it accept params
let actionWithParam = { (action: String) in
    print("\(action) is my action")
}

func doMyActionWithParam(action: (String) -> Void) {
    print("preparation")
    action("Learn to coding")
    print("finish")
}

doMyActionWithParam(action: actionWithParam)


// use closure as param, when it return a value

func doMyActionWithParamReturnValue(action: (String) -> String) {
    print("preparation")
    let myAction = action("Joging")
    print(myAction)
    print("finish")
}

let myActionAgain = "Joging"
doMyActionWithParamReturnValue { myActionAgain -> String in
    return "\(myActionAgain) is my action"
}


// closure with multiple parameters

func doMyTravel(action: (String, Int) -> String) {
    print("Im getting ready to go")
    let description = action("Yogyakarta", 80)
    print(description)
    print("I arrived")
}

doMyTravel { (kota, kecepatan) in
    return "Im going to \(kota) at \(kecepatan) miles per hour"
}

doMyTravel {
    return "Im going to \($0) at \($1) miles per hour"
}


// Returning a closure
func doMyTravelAgain() -> (String) -> Void {
    return { data in
        print("Holaaa, Im from closure, \(data)")
    }
}

let myClosureFromFunction = doMyTravelAgain()
myClosureFromFunction("Dataaa")

// we allow to do this
doMyTravelAgain()("Hahaaa")

// capturing value
// to use external values inside closure

func doMyTravelCount() -> (String) -> Void {
    var counter = 1
    
    return { city in
        print("\(counter). Im going to \(city)")
        counter += 1
    }
}

let myCounterTravelCount = doMyTravelCount()
myCounterTravelCount("Jakarta")
myCounterTravelCount("Yogyakarta")
