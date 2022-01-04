//
//  PaymentTemplate.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

protocol PaymentTemplate {
    func initilize()
    func startPayment()
    func endPaymenet()
}

extension PaymentTemplate {
    func makePayment() {
        self.initilize()
        self.startPayment()
        self.endPaymenet()
    }
}
