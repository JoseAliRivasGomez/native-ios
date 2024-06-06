

import Foundation

print("Conditionals")

// If statement
let hoursSlept = 100
if hoursSlept <= 6 {
    print("I'm NOT happy because I've slept for \(hoursSlept) hours")
} else if hoursSlept > 6 && hoursSlept <= 10 {
    print("I feel great ")
} else {
    print("I am sleeping too much")
}

// if expression
let happiness: String = if hoursSlept <= 6 {
    "I'm NOT happy because I've slept for \(hoursSlept) hours"
} else if hoursSlept > 6 && hoursSlept <= 10 {
    "I feel great"
} else {
    "I am sleeping too much"
}

print("\n\nIf expression")
for hoursSlept in [3,8,11] {
    // if expression
    let happiness: String = if hoursSlept <= 6 {
        "I'm NOT happy because I've slept for \(hoursSlept) hours"
    } else if hoursSlept > 6 && hoursSlept <= 10 {
        "I feel great because I've slept for \(hoursSlept) hours"
    } else {
        "I am sleeping too much (\(hoursSlept) hours)"
    }
    print(happiness)
}

let strangeVariable = if hoursSlept > 0 {
    0.0
} else {
    7.3
}

let validSleep: String? = if hoursSlept >= 0 {
    "Sleep is valid"
} else {
    nil
}

//let isValidSleep: Bool = if hoursSlept >= 0 {
//    true
//} else {
//    false
//}
let isValidSleep = hoursSlept >= 0

let someValue = hoursSlept > 17 ? "Amazing" : "Oh no!"
let anotherValue: Double = hoursSlept > 0 ? 0 : 7.3

print("\n\nSwitch Statement and Expression")

let dayOfWeek = "Wednesday"
switch dayOfWeek {
case "Monday":
    print("It's the start of the work week")
case "Tuesday":
    print("It's stil early in the week")
case "Wednesday":
    print("The week is halfway through")
case "Thursday":
    print("The weekend is approaching 😄")
case "Friday":
    print("It's the end of the work week")
case "Saturday", "Sunday":
    print("Yes! It is the weekend")
default:
    print(#""\#(dayOfWeek)" is an invalid day of the week !"#)
}

let message: String = switch dayOfWeek {
case "Monday":
    "It's the start of the work week"
case "Tuesday":
    "It's stil early in the week"
case "Wednesday":
    "The week is halfway through"
case "Thursday":
    "The weekend is approaching 😄"
case "Friday":
    "It's the end of the work week"
case "Saturday", "Sunday":
    "Yes! It is the weekend"
default:
    #""\#(dayOfWeek)" is an invalid day of the week !"#
}

print(message)

// Switch
func positionDescription( point: (x: Int, y: Int)) -> String {
    switch point {
    case (0,0):
        "\(point) is at the origin"
    case (_,0):
        "\(point) is on the x-axis"
    case (0,_):
        "\(point) is on the y-axis"
    case (0...,0...):
        "\(point) is in the first quadrant"
    case (...0,0...):
        "\(point) is in the second quadrant"
    case (...0,...0):
        "\(point) is in the third quadrant"
    case (0...,...0):
        "\(point) is in the fourth quadrant"
    default:
        "\(point) is at an unknown position"
    }
}
print("\n\npositionDescription example - Switch with tuples and ranges")
print(positionDescription(point: (2,2)))
print(positionDescription(point: (-5,2)))
print(positionDescription(point: (-5,-3)))
print(positionDescription(point: (5,-3)))
print(positionDescription(point: (0,0)))
print(positionDescription(point: (0,4)))
print(positionDescription(point: (3,0)))

func onSineOrCosine( point: (x: Double, y: Double), threshold: Double = 0.01) -> String {
    switch point {
    case let (x,y) where (y <= sin(x) + threshold && y >= sin(x) - threshold) || (y <= cos(x) + threshold && y >= cos(x) - threshold):
        "\(point) is on sine, cosine or both"
    default:
        "\(point) is NOT on sine or cosine"
    }
}


print(onSineOrCosine(point: (5, sin(5))))
print(onSineOrCosine(point: (71, cos(71))))
print(onSineOrCosine(point: (71, -0.309022728166070)))
print(onSineOrCosine(point: (71, -0.309022728166070), threshold: 0.0000000000000000001))
