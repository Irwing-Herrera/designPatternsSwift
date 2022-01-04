//
//  Paypal.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class Paypal: PaymentTemplate {
    func initilize() {
        print("Inicializando Paypal")
    }
    
    func startPayment() {
        print("Realizando pago con Paypal")
    }
    
    func endPaymenet() {
        print("Finalizando pago con Paypal")
    }
}
