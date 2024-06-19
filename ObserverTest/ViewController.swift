//
//  ViewController.swift
//  ObserverTest
//
//  Created by MacBook Pro on 30/03/2024.
//

import UIKit

protocol Summable {
    static func +(lhs: Self, rhs: Self) -> Self
}

extension Int: Summable {}
extension Double: Summable {}
extension String: Summable {}

class ViewController: UIViewController {
    
    let subject = Subject()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let binary = BinaryObserver(subject: subject, id: 1)
        let octal = OctalObserver(subject: subject, id: 2)
        let hex = HexaObserver(subject: subject, id: 3)

        subject.number = 15
        subject.removeObserver(observer: binary)
        subject.number = 2
        
//        let addIntSum = add(x: 1, y: 2) // 3
//        let addDoubleSum = add(x: 1.0, y: 2.0) // 3
//        let addString = add(x: "Generics", y: " are Awesome!!! :]") //  "Generics are Awesome!!! :]"
        
        // No parameter and return nothing
        let sayHello: () -> Void = {
            print("Hello")
        }

        sayHello()

        // Closure take one parameter and return 1 parameter
        let value: (Int) -> Int = { (value1) in
            return value1
        }

        debugPrint(value(3))

    }

    func add<T: Summable>(x: T, y: T) -> T {
      return x + y
    }

}

