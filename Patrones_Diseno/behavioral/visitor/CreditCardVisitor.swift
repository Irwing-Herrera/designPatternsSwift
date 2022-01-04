//
//  CreditCardVisitor.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

protocol CreditCardVisitor {
    func gassolineOffer(gassolineOffer: GassolineOffer)
    func flightsOffer(flightsOffer: FlightsOffer)
}
