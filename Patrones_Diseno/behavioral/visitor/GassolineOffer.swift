//
//  GassolineOffer.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class GassolineOffer: OfferElement {
    func accept(visitor: CreditCardVisitor) {
        visitor.gassolineOffer(gassolineOffer: self)
    }
}
