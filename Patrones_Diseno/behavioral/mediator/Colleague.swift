//
//  Colleague.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class Colleague {
    
    let mediator: Mediator
    
    init(mediator: Mediator) {
        self.mediator = mediator
    }
    
    func send(message: String) {}
    func messageReceived(message: String) {}
}
