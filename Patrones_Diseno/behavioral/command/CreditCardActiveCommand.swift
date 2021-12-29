//
//  CreditCardActiveCommand.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation

class CreditCardActiveCommand: Command {
    
    var creditCardReceiver: CreditCardReceiver
    
    init(creditCardReceiver: CreditCardReceiver) {
        self.creditCardReceiver = creditCardReceiver
    }
    
    func execute() {
        creditCardReceiver.sendPinNumberToCustomer()
        creditCardReceiver.enabled()
        creditCardReceiver.sendSmsToCustomerEnabled()
    }
    
}
