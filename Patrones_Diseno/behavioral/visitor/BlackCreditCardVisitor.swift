//
//  BlackCreditCardVisitor.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class BlackCreditCardVisitor: CreditCardVisitor {
    func gassolineOffer(gassolineOffer: GassolineOffer) {
        print("Descuento del 10% en Gasolina con Tarjeta Black")
    }
    
    func flightsOffer(flightsOffer: FlightsOffer) {
        print("Descuento del 25% con Tarjeta Black")
    }
}
