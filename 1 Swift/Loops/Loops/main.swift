
import Foundation

print("Hello, World!")

for i in 0..<5 {
    print( i)
}

let data = ["tree", "house", "dinner"]
for item in data {
    print(item)
}

for _ in 0..<3 {
    print( "Hello World !")
}

let minuteInterval = 5
let minutes = 60
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print( tickMark)
}

let n = 5
var i = 0
var sum = 0
while(i <= n) {
    sum += i
    
    i += 1
}
print("The sum of the values from 0 to \(n) is : \(sum)")

//repeat {
//    print("forever")
//} while(true)
