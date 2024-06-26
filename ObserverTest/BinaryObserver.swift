//
//  BinaryObserver.swift
//  ObserverTest
//
//  Created by MacBook Pro on 30/03/2024.
//

import Foundation

class BinaryObserver : Observer{
    
    private var subject = Subject()
    var id = Int()

    init(subject : Subject, id : Int) {
        self.subject = subject
        self.subject.attachObserver(observer: self)
        self.id = id
    }
    
    func update(){
        print("Binary: \(String(subject.number, radix: 2))")
    }
    
}
