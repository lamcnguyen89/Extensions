//
//  main.swift
//  Extensions
//
//  Created by M_2022814 on 12/15/21.
//

import Foundation

// MARK: - Extensions
//Extensions add new functionality to an existing class, structure, enumeration, or protocol type.
// This includes the ability to extend types for which you don't have access to the original source code
/*
Extensions in Swift can:
 -Add computed instance properties and computed type properties
 -Define instance methods and type methods
 - Provide new initializers
 - Define subscripts
 - Define and use new nested types
 - Make an existing type conform to a protocol
 */

// Syntax:

class DragonType {
    var health = 10000
    var strength = 50000
}
extension DragonType {
    func fireBreathing() {
        print("The beast beaths flames")
    }
}

var beastlySam = DragonType()
beastlySam.fireBreathing() // Prints The beast breathese flames

// An extension can extend an existing type to make it adopt one or more protocols

/*
 extension SomeType: SomeProtocol, AnotherProtocol {
    // Protocol Requirements have the skeleton code implemented here
 }
 */

// MARK: - Computed Properties

extension Double {
    var km: Double{ return self * 1000.00}
    var m: Double {return self}
    var cm : Double {return self / 100.00}
    var mm : Double {return self / 1000.00}
    var ft : Double {return self / 3.28084}
}

let oneInch = 25.4.mm
print("One Inch = \(oneInch) meters") // Prints .0254 meters
let conversion01 = 58.99.ft
print ("\(conversion01) meters")

// MARK: - Initializers

struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
}

let defaultRect = Rect()
let memberwiseRect = Rect(origin: Point(x: 2.0, y: 5.0), size: Size(width: 5.0, height: 7.0))

extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width/2)
        let originY = center.y - (size.height/2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

// MARK: - Methods
    // Extensions can add new methods to existing types
extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}
// The repetitions(task:) method takes a single argument of type () -> Void, which indicates a function has no parameters and doesn't return a value.
//  After defining this extension, you can call the repetitions(task:) method on any integer to perform a task that many number of times:

5.repetitions {
    print("Love and Death")
} // Prints "Love and Death" 5 times


// MARK: - Subscripts
// Extensions can add new subscripts to an existing type

// MARK: - Nested Types
// // Extensions can add new nested types to existing classes, structures, and enumerations

