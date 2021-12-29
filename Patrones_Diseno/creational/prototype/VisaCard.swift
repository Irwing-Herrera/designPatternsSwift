//
//  VisaCard.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation

class VisaCard: PrototypeCard {
    
    var cardName = "VISA"
    
    func copy() -> Any {
        return self.copy(with: nil)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        guard let prototype = super.copy(with: zone) as? VisaCard else {
            return VisaCard()
        }
        
        prototype.cardName = cardName
        
        print("Clonando tarjeta Visa")
        return prototype
    }
}
