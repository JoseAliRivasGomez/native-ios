//
//  main.swift
//  Collections Dictionaries
//
//  Created by Ron Erez on 30/09/2023.
//

import Foundation

print("Dictionaries")

//var foodCalories: [String: Int] = [:]
//foodCalories["apple"] = 95
//foodCalories["banana"] = 105
//foodCalories["salad"] = 100
//foodCalories["pizza"] = 285

var foodCalories: [String: Int] = ["banana": 105, "pizza": 285, "salad": 100, "apple": 95]

print(foodCalories)

if let calories = foodCalories["cake"] {
    print( calories)
} else {
    foodCalories["cake"] = 350
//    print("We do not have information regarding the number of calories in Cake.")
}
print(foodCalories)

let calories: Int = foodCalories["cabbage", default: 0]

print(foodCalories)

for (key, value) in foodCalories {
    print("The number of calories in a \(key) is \(value) calories.")
}

print(foodCalories.keys)
print(foodCalories.values)
//foodCalories.removeAll()
//print(foodCalories.keys)
//print(foodCalories.values)
foodCalories.removeValue(forKey: "banana")
print(foodCalories)
foodCalories.removeValue(forKey: "mango")
print(foodCalories)
