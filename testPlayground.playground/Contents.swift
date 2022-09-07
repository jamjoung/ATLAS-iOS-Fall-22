import UIKit
import Foundation

var name: String?
var name2: String?

func sayHi(name:String){
    print("Hi \(name)")
}

name = "Jamie"

print("\(name)")

//optional wrapping?
//if let name = name {
//    print("about to execute")
//    sayHi(name: name)
//}

//let customName = name != nil ? name! : "Friend"
//equivalent to
let customName = name ?? "Friend"

if let name = name {
    customName = name
}
else {
    customName = "Friend"
}

sayHi(name: customName)


func sayHi2(name: String?) {//force to unwrap with exclamation, app can crash
    guard let name = name else {
        print("No name found")
        return
    }
    print("Hi \(name)")
}
name2 = "Wow"
sayHi2(name: name2)
