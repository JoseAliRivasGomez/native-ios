//
//  main.swift
//  Collections
//
//  Created by Ron Erez on 29/09/2023.
//

import Foundation

print("Collections")

var favoriteNumbers: [Double] = [7.0, sqrt(2), Double.pi]

favoriteNumbers.append(12.345)
print(favoriteNumbers)

var manyZeros = Array(repeating: 0, count: 7)

var lotsOfHummus = Array(repeating: "Hummus", count: 10)

print(manyZeros)
print(lotsOfHummus)

// Iterate over an array
for number in favoriteNumbers {
    print("One of my favorite numbers is \(number)")
}

print(lotsOfHummus.isEmpty)

print(favoriteNumbers[0...1])
print(favoriteNumbers[0..<1])
//print(favoriteNumbers[0...100]) // Careful ! index out of range !

favoriteNumbers.insert(91.3, at: 1)
print(favoriteNumbers)

// Iterate over an array with index
for index in 0..<favoriteNumbers.count {
    print("One of my favorite numbers is \(favoriteNumbers[index])")
}

for (index, value) in favoriteNumbers.enumerated() {
    print("The number \(value) is my favorite number at position \(index+1).")
}
