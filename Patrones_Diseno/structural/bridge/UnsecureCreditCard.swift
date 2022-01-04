//
//  UnsecureCreditCard.swift
//  Patrones_Diseno
//
//  Created by MacBook on 04/01/22.
//

import Foundation

class UnsecureCreditCard: CreditCardProtocol {
    func makePayment() {
        print("Pago sin seguridad")
    }
}
