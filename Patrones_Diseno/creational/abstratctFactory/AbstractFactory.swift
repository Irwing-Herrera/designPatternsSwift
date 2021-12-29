//
//  AbstractFactory.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation

protocol AbstractFactory {
    func createPayment() -> PaymentAF
    func createMethod() -> Method
}
