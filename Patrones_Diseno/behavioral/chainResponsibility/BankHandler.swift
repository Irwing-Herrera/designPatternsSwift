//
//  BankHandler.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation

class BankHandler: ApprovedLoanHandler {
    
    private var next: ApprovedLoanHandler?
    
    func setNext(handler: ApprovedLoanHandler) {
        self.next = handler
    }
    
    func getNext() -> ApprovedLoanHandler {
        return self.next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        let gold = GoldHandler()
        self.setNext(handler: gold)
        
        let platinum = PlatiniumHandler()
        gold.setNext(handler: platinum)
        
        let black = BlackHandler()
        platinum.setNext(handler: black)
        
        self.next?.creditCardRequest(totalLoan: totalLoan)
    }
}
