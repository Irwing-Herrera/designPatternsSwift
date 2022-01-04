//
//  IntenatinalPaymenyDecorator.swift
//  Patrones_Diseno
//
//  Created by MacBook on 04/01/22.
//

import Foundation

class IntenatinalPaymenyDecorator: CreditDecorator {
    
    override init(decorated: CreditComponent) {
        super.init(decorated: decorated)
    }
    
    override func showCredit() {
        decorated.showCredit()
        self.configInternatinalPayment()
    }
    
    func configInternatinalPayment() {
        print("Tarjeta configurada con pago internacional")
    }
}
