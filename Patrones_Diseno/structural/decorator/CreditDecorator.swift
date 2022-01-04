//
//  CreditDecorator.swift
//  Patrones_Diseno
//
//  Created by MacBook on 04/01/22.
//

import Foundation

class CreditDecorator: CreditComponent {
    
    var decorated: CreditComponent
    
    init(decorated: CreditComponent) {
        self.decorated = decorated
    }
    
    func showCredit() {
        self.decorated.showCredit()
    }
}
