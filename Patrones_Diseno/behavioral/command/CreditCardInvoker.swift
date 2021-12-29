//
//  CreditCardInvoker.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation

class CreditCardInvoker {
    
    private var command: Command?
    
    func setCommand(command: Command) {
        self.command = command
    }
    
    func run() {
        command?.execute()
    }
}
