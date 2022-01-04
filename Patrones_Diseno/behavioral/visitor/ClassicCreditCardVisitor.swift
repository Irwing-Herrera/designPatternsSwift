//
//  ClassicCreditCardVisitor.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class ClassicCreditCardVisitor: CreditCardVisitor {
    func gassolineOffer(gassolineOffer: GassolineOffer) {
        print("Descuento del 3% en Gasolina con Tarjeta Classic")
    }
    
    func flightsOffer(flightsOffer: FlightsOffer) {
        print("Descuento del 5% con Tarjeta Classic")
    }
}
