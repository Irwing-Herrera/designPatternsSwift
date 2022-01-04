//
//  CreditCardBrigde.swift
//  Patrones_Diseno
//
//  Created by MacBook on 04/01/22.
//

import Foundation

class CreditCardBrigde {
    
    let creditCard: CreditCardProtocol
    
    init(creditCard: CreditCardProtocol) {
        self.creditCard = creditCard
    }
    
    func makePayment() {}
    
}
