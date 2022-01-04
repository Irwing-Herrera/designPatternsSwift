//
//  CreditMarketfacade.swift
//  Patrones_Diseno
//
//  Created by MacBook on 04/01/22.
//

import Foundation

class CreditMarketfacade {
    
    var black  = BlackModule()
    var gold   = GoldModule()
    var silver = SilverModule()
    
    func showCreditBlack() {
        self.black.showCredit()
    }
    
    func showCreditGold() {
        self.gold.showCredit()
    }
    
    func showCreditSilver() {
        self.silver.showCredit()
    }
}
