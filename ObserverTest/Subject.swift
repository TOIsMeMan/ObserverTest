//
//  Subject.swift
//  ObserverTest
//
//  Created by MacBook Pro on 30/03/2024.
//

import Foundation

class Subject{
    
    private var observerArray = [Observer]()
    private var _number = Int()
    var number : Int {
        set {
            _number = newValue
            notify()
        }
        get {
            return _number
        }
    }
    
    func attachObserver(observer : Observer){
        observerArray.append(observer)
    }
    
    func removeObserver(observer : Observer) {
        observerArray = observerArray.filter{ $0.id != observer.id }
    }
    
    private func notify(){
        for observer in observerArray {
            observer.update()
        }
    }
    
}
