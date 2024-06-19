//
//  HexaObserver.swift
//  ObserverTest
//
//  Created by MacBook Pro on 30/03/2024.
//

import Foundation

class HexaObserver : Observer{
    
    private var subject = Subject()
    var id = Int()
    
    init(subject : Subject, id : Int) {
        self.subject = subject
        self.subject.attachObserver(observer: self)
        self.id = id
    }
    
    func update(){
        print("Hex: \(String(subject.number, radix: 16))")
    }
    
}
