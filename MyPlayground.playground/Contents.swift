import UIKit

var greeting = "Hello, playground"
var floatGreeting:Float = 1.0


greeting = "Hi"

struct Person {
    var firstName: String
    var lastName: String
}

let me = Person(firstName:"Jamie", lastName:"Joung")

class Human {
    var firstName:String
    var lastName:String
    
    init() {
        firstName=""
        lastName=""
    }
}

typealias SpecialNumber = Int
var myNum: SpecialNumber = 2


typealias Coordinate = (x:Int, y:Int)
var coordinates: Coordinate = (x: 0, y:20)

coordinates.x
coordinates.y

print(coordinates)

enum CardinalDirection{
    case north, east, south, west
    
//    var description: String {
//        return rawValue
//    }

    var axis : String{
        switch self {
        case .north, .south:
            return "vertical"
        case .east, .west:
            return "horizontal"
        }
    }
}

var direction = CardinalDirection.north
direction.axis
//direction.description

struct Coordinates {
    var x: Int
    let y: Int
    
    static var zero: Coordinates {
        return Coordinates(x:0, y:0)
    }
    var description: String{
        "\(x), \(y)"
    }
}

var start = Coordinates(x:0, y:20)

start.x = 10

start.description


var list2: [Int] = [0, 2, 3, 4, 8, 90]
for (index, item) in list2.enumerated() {
    print("On item \(item) with index \(index)")
}

var list = [Int]()
list.append(2)
list.append(3)
list.append(4)

var dictionary = [Int:String]()
dictionary[3] = "Three"
dictionary[4]

//arrow -> = return type of function
func math(number: Int) -> Int {
    print("Hi")
    return number
}

func math2(_ number: Int, _ other: Int) -> Int {
    return number + other
}

func math3(_ number: Float, _ other: Float = 5) -> Float {
    return number + other
}

math(number: 4)
math2(4, 5)
math3(2.5, 3.5)


