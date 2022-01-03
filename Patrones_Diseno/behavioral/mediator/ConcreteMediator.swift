//
//  ConcreteMediator.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class ConcreteMediator: Mediator {
    
    var user1: ConcreteColleague1?
    var user2: ConcreteColleague2?
    
    func setColleague1(colleague1: ConcreteColleague1) {
        self.user1 = colleague1
    }
    
    func setColleague2(colleague2: ConcreteColleague2) {
        self.user2 = colleague2
    }
    
    func send(message: String, colleague: Colleague) {
        if colleague === self.user1 {
            self.user2?.messageReceived(message: message)
        } else if colleague === self.user2 {
            self.user1?.messageReceived(message: message)
        }
    }
}
