//
//  ClassicCreditCard.swift
//  Patrones_Diseno
//
//  Created by MacBook on 04/01/22.
//

import Foundation

class ClassicCreditCard: CreditCardBrigde {
    
    override init(creditCard: CreditCardProtocol) {
        super.init(creditCard: creditCard)
    }
    
    override func makePayment() {
        self.creditCard.makePayment()
    }
}
