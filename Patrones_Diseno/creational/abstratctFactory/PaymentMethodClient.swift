//
//  PaymentMethodClient.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation

class PaymentMethodClient {
    static func codigoCliente(factory: AbstractFactory) {
        let payment = factory.createPayment()
        let method = factory.createMethod()
        
        payment.doPayment()
        let montly = method.calculatePayment()
        print("Mensualidad \(String(describing: montly))")
    }
}
