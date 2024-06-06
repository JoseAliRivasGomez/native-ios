
import Foundation

print("Compound operators")

//var x = 2
//print(x)
//
//// x = x + 1
//x += 1
//print(x)
//
////x = x - 1
//x -= 1
//print(x)
//
// Examples:
// 1. Calculate the n-th element of an arithmetric progression
// 2. Calculate the n-th element of an geometric progression
// 3. Calculate the sum of the elements a1, ... , an of an arithmetric
// progression.
// 4. Calculate the sum of the elements a1, ... , an of an geometric
// progression.

/// Computes the n-th element in the sequnce: a1, a1 + d, a1 + 2d, a1 + 3d, ...
/// For example: The third element in the sequence
/// 1, 4, 7, 10, 13, ...
/// is the number 7
/// - Parameters:
///   - a1: The first element in the sequence/progression
///   - d: Difference/distance between  consecutive elements
///   - n: Position
/// - Returns: The n-th element of the arithmetic progrssion
func arithmeticProgression( a1: Double, d: Double, n: Int) -> Double {
    a1 + Double((n - 1)) * d
}

//print(arithmeticProgression(a1: 1, d: 3, n: 1))
//print(arithmeticProgression(a1: 1, d: 3, n: 2))

for n in 1...10 {
    print(arithmeticProgression(a1: 20, d: -2, n: n))
}

// Exercise: Use compound operators to implement:
// Calculate 1+4+7+10 = 22 (if n=4, a1=1, d=3)
// Sn = a1 + a2 + a3 + a4 + ... + an
func sumArithmeticProgression( a1: Double, d: Double, n: Int) -> Double? {
    if n <= 0 {
        return nil
    }
    
    var sum: Double = 0
    
    for i in 1...n {
        sum += arithmeticProgression(a1: a1, d: d, n: i)
    }
    
    return sum
}

print( "Testing the function 'sumArithmeticProgression'")

func printSumArithmeticProgression( a1: Double, d: Double, n: Int) {
    if let sum = sumArithmeticProgression(a1: a1, d: d, n: n) {
        print( sum)
    } else {
        print("Invalid argument, n must be positive.")
    }
}

printSumArithmeticProgression(a1: 1, d: 3, n: 4)
printSumArithmeticProgression(a1: 1, d: 3, n: -1)
printSumArithmeticProgression(a1: 1, d: 3, n: 0)


// Look up definition of geometric progression and implement functions.
// a1, a1*q, a1*q^2, a1*q^3, ...
// 3, 3/2 , 3/4, 3/8, 3/16, ...
func geometricProgression(a1: Double, q: Double, n: Int) -> Double {
    a1 * pow( q, Double(n-1))
}

func sumGeometricProgression(a1: Double, q: Double, n: Int) -> Double? {
    if n <= 0 {
        return nil
    }

    var sum: Double = 0
    
    for i in 1...n {
        sum += geometricProgression(a1: a1, q: q, n: i)
    }
    
    return sum
}

func printSumGeometicProgression(a1: Double, q: Double, n: Int) {
    if let sum = sumGeometricProgression(a1: a1, q: q, n: n) {
        print( sum)
    } else {
        print("Invalid argument, n must be positive.")
    }
}


// 1+3+9+27
print("Testing 'sumGeometricProgression'")
printSumGeometicProgression(a1: 1, q: 3, n: 4)
printSumGeometicProgression(a1: 1, q: 3, n: 1)
printSumGeometicProgression(a1: 1, q: 3, n: 0)

// Create a function that returns the product of even numbers:
// 2*4*6*8...2n
func evenProduct( n: Int) -> Int? {
    if n <= 0 {
        return nil
    }
    
    var product = 1
    
    for i in 1...n {
        product *= 2*i
    }
    
    return product
}
print("Test 'evenProduct'")
if let product = evenProduct(n: 0) {
    print( product)
} else {
    print("Invalid input, n must be positive")
}


