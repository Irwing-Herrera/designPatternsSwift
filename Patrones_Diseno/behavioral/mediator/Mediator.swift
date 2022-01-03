//
//  Mediator.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

protocol Mediator {
    func send(message: String, colleague: Colleague)
}
