//
//  PaymentFactory.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation

class PaymentFactory {
    static func buildPayment(typePayment: TypePayment) -> Payment {
        switch typePayment {
        case .GOOGLE:
            return GooglePayment()
        case .CARD:
            return CardPayment()
        }
    }
}
