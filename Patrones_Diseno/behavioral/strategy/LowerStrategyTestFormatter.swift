//
//  LowerStrategyTestFormatter.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class LowerStrategyTestFormatter: StrategyTestFormatter {
    func format(text: String) {
        print("Utilizando el texto en Minusculas: \(text.lowercased())")
    }
}
