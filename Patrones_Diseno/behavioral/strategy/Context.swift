//
//  Context.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class Context {
    
    var strategyTextFormatter: StrategyTestFormatter
    
    init(strategyTextFormatter: StrategyTestFormatter) {
        self.strategyTextFormatter = strategyTextFormatter
    }
    
    func publishText(text: String) {
        self.strategyTextFormatter.format(text: text)
    }
}
