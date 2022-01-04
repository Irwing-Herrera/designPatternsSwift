//
//  Visa.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class Visa: PaymentTemplate {
    func initilize() {
        print("Inicializando Visa")
    }
    
    func startPayment() {
        print("Realizando pago con Visa")
    }
    
    func endPaymenet() {
        print("Finalizando pago con Visa")
    }
}
