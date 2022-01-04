//
//  SecureDecorator.swift
//  Patrones_Diseno
//
//  Created by MacBook on 04/01/22.
//

import Foundation

class SecureDecorator: CreditDecorator {
    
    override init(decorated: CreditComponent) {
        super.init(decorated: decorated)
    }
    
    override func showCredit() {
        decorated.showCredit()
        self.configSecure()
    }
    
    func configSecure() {
        print("Tarjeta configurada con pago seguro")
    }
    
}
