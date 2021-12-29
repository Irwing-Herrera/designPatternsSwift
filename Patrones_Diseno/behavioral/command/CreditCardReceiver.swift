//
//  CreditCardReceiver.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation

class CreditCardReceiver {
    func sendPinNumberToCustomer() {
        print("El PIN ha sido enviado al Cliente")
    }
    
    func sendSmsToCustomerEnabled() {
        print("Enviando SMS al cliente informando que su tarjeta ha sido activada.")
    }
    
    func enabled() {
        print("La tarjeta ha sido activada")
    }
    
    func disabled() {
        print("La tarjeta ha sido desactivada")
    }
    
    func sendSmsToCustomerDisabled() {
        print("Enviando SMS al cliente informando que su tarjeta ha sido desactivada.")
    }
}
