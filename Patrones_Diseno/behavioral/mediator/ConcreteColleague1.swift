//
//  ConcreteColleague1.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class ConcreteColleague1: Colleague {
    
    override func send(message: String) {
        mediator.send(message: message, colleague: self)
    }
    
    override func messageReceived(message: String) {
        print("Usuario 1 ha recibido el mensage: \(message)")
    }
}
