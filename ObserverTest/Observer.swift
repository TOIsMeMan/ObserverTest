//
//  Observer.swift
//  ObserverTest
//
//  Created by MacBook Pro on 30/03/2024.
//

import Foundation

protocol Observer{
    var id : Int{ get }
    func update()
}
