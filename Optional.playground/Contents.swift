//: Playground - noun: a place where people can play

import UIKit

// Optional chaining

class Residence {
    var numberOfRooms = 1
}

class Person {
    var residence: Residence?
}
let john = Person()
john.residence = Residence()
//let roomCount = john.residence!.numberOfRooms
// this triggers a runtime error
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
// Prints "Unable to retrieve the number of rooms."

// Optional la gi: Optional la mot kieu du lieu co the chua gia tri nil
// Optional binding

//func optionalDemo() {
//    let name: String? = "Student"
//    if let nameValue = name {
//        print(nameValue)
//    } else {
//        print("NIL")
//    }

//    guard let nameData = name else { return  }
//    print(nameData)
//}
//
//optionalDemo()
// Force Unwrap
//let name: String? = nil
//if name != nil {
//    print(name!)
//}

// implicit unwrapped optional

//let assumedString: String! = "Student"
//if assumedString != nil {
//
//    let implicitString: String = assumedString
//    print(implicitString)
//}



