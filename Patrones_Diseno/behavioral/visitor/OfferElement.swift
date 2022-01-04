//
//  OfferElement.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

protocol OfferElement {
    func accept(visitor: CreditCardVisitor)
}
