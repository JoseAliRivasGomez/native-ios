
/*
 1. Create a function

 func divisibleBy7( number: Int) -> String

 In case the number is divisible by 7, the program should return

 I am <number> and I am divisible by 7
 ---
 Example 1. For divisibleBy7( number: 49) returns the string: "I am 49 and I am divisible by 7."

 Example 2. For divisibleBy7( number: -17)returns the string: "I am -17 and I am not divisible by 7."
 */


import Foundation

func divisibleBy7( number: Int) -> String {
    var result = ""
    
    if number % 7 == 0 {
        result = "I am \(number) and I am divisible by 7."
    } else {
        result = "I am \(number) and I am not divisible by 7."
    }
    
    return result
}
//
//func divisibleBy7( number: Int) -> String {
//    number % 7 == 0 ?
//    "I am \(number) and I am divisible by 7." :
//    "I am \(number) and I am not divisible by 7."
//}
//
//func divisibleBy7( number: Int) -> String {
//    let notString = number % 7 == 0 ? "" : " not"
//    
//    return "I am \(number) and I am\(notString) divisible by 7."
//}

// I don't like this solution. It is error-prone. Not readable. Confusing.
// It looks like I am showing off.
//func divisibleBy7( number: Int) -> String {
//    "I am \(number) and I am\(number % 7 == 0 ? "" : " not") divisible by 7."
//}



print(divisibleBy7( number: 49))
print(divisibleBy7( number: -17))
print(divisibleBy7( number: -7))
print(divisibleBy7( number: 0))

