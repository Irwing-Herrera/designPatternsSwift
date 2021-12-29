//
//  PaymentInAdvanceCardFactory.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation

class PaymentInAdvanceCardFactory: AbstractFactory {
    func createPayment() -> PaymentAF {
        return CardPaymentAF()
    }
    
    func createMethod() -> Method {
        return PaymentInAdvanceMethod()
    }
}
