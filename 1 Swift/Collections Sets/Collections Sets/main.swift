
import Foundation

print("Sets")

var setOfNumbers = Set([1,5,7,3,1,5,5])

print(setOfNumbers)

var fruits: Set<String> = ["apple", "kiwi", "banana"]

print(fruits)

var A = Set([1,2,3])
var B = Set([2,3,4])

print("The union of \(A) with \(B) is \(A.union(B))")
print("The intersection of \(A) with \(B) is \(A.intersection(B))")
print("The difference of \(A) and \(B) is \(A.subtracting(B))")
print("The difference of \(B) and \(A) is \(B.subtracting(A))")

for a in A {
    print(a)
}

print(A.isSubset(of: B))

print(A.contains(2))

print("Loop over members of A")
for a in A {
    print("Is \(a) a member of \(A)? \(A.contains(a)).")
}

print(A.sorted())
