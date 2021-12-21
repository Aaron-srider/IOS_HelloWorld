import UIKit

var greeting = "Hello, playground"


print(greeting)

let explicitDouble: Double = 80;

print("hello \(explicitDouble)" + explicitDouble)

extension String {
    static func + (lhs: String, rhs: Double)->String {
        return lhs + String(rhs)
    }
}

var list = ["2" ,"a", "829"]

print(list)

list.append("hello")

print(list)

extension Array {
    static func +=(arr: inout Array, elem: Element)->Array {
        arr.append(elem)
        return arr
//        var list = arr
//        list.append(elem)
//        return list
    }
    
//    @inlinable public static func += <Other>(lhs: inout Self, rhs: Other) where Other : Sequence, Self.Element == Other.Element{
//
//        lhs.append(rhs)
//    }
}
list += "1"
print(list)

extension Double {
    func eat() {
        print("i want to eat \(self)")
    }
}

extension Int {
    func eat() {
        print("i want to eat \(self)")
    }
}

3.eat()

var dictionary = [
    "eat": ["key" :"value"],    "helo": ["key" :"value"]
]

print(dictionary)

for score in dictionary {
    print(score.key)
}

struct A {
    mutating func add() {
        
    }
}

var opionalName: String? = nil

print(opionalName)


if let name = opionalName{
    print(name)
}

var nickname: String? = nil

let fullName: String = "john appplease"

nickname = "wc"

let b = "hi \(nickname ?? fullName)"

print(b)

let vege = "red paper"

switch vege {
case "1" : print("hello")
case "2" : print("you")
case let x where x == "you": print("me")
default: print("hello world")
}

let multiNumbers = [
    "prime": [1, 2, 3, 4, 5],
    "fibo": [1, 4, 8, 16, 32],
    "square": [1, 2, 3, 4, 6]
]


var largest = 0
var largestName = ""
for (key, numbers) in multiNumbers{
    
    var count = 0
    for number in numbers {
        if number > largest {
            largest = number
            count += 1
            if count == 1{
                largestName = key
            }
            
        }
    }
}

print(largest)
print(largestName)


var n = 3

while( n < 100 )  {
    n *= 2
}

func greet(person: String, day: String) -> String{
    
    return "Hello \(person), today is \(day)"
    
}

greet(person: "hello", day:"world")
print(greet(person: "hello", day: "world"))


let prime = [1, 2, 3, 4, 5]

print(prime.map({a in a + 1}))

class Example {
    var arr: String?
}


for _ in 1...3 {
    print(Int.random(in: 1...2))
}
print("\n")

for (i, t) in 1...3 {
    print(i)
}






















