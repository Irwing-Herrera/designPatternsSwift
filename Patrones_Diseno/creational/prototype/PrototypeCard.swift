//
//  PrototypeCard.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation

class PrototypeCard: NSCopying {
    
    var cardNumber: Int = 0
    var cardType: String = ""
    
    required init(cardNumber: Int = 0, cardType: String = "") {
        self.cardNumber = cardNumber
        self.cardType = cardType
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let prototype = type(of: self).init()
        prototype.cardNumber = cardNumber
        prototype.cardType = cardType
        
        print("Los valores de Clase PrototypeCard han sido CLONADOS")
        return prototype
    }
    
    
}
