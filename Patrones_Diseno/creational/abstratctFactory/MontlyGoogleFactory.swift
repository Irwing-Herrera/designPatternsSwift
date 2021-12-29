//
//  MontlyGoogleFactory.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation

class MontlyGoogleFactory: AbstractFactory {
    func createPayment() -> PaymentAF {
        return GooglePaymentAF()
    }
    
    func createMethod() -> Method {
        return MontlyMethod()
    }
    
}
