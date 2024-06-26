//
//  OctalObserver.swift
//  ObserverTest
//
//  Created by MacBook Pro on 30/03/2024.
//

import Foundation

class OctalObserver : Observer{
    
    private var subject = Subject()
    var id = Int()

    init(subject : Subject, id : Int) {
        self.subject = subject
        self.subject.attachObserver(observer: self)
        self.id = id
    }
    
    func update(){
        print("Octal: \(String(subject.number, radix: 8))")
    }
    
}
