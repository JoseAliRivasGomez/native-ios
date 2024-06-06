
import Foundation

func add( x: Int, y: Int) -> String {
    "\(x) + \(y) = \(x+y)"
}

func subtract( x: Int, y: Int) -> String {
    "\(x) - \(y) = \(x-y)"
}
func multiply( x: Int, y: Int) -> String {
    "\(x) * \(y) = \(x*y)"
}
func divide( x: Int, y: Int) -> String {
    y == 0 ? "Divide by zero error!" : "\(x) / \(y) = \(x/y)"
}
func modulo( x: Int, y: Int) -> String {
    y == 0 ? "Divide by zero error!" : "\(x) modulo \(y) = \(x%y)"
}
// x = q*y + r
func division( x: Int, y: Int) -> String {
    if y == 0 {
        return "Divide by zero error!"
    } else {
        let q = x / y
        let r = x % y
        return "\(x) = \(q) * \(y) + \(r)"
    }
}


print("Arithmetic Demo")

print( add(x: 2, y: 3))
print( add(x: 5, y: 7))
print( add(x: 10, y: 1204))

print( subtract(x: 10, y: 3))
print( multiply(x: 10, y: 3))
print( divide(x: 10, y: 3))
print( modulo(x: 10, y: 3))

print( division(x: 17, y: 3))
print( division(x: 17, y: 0))
