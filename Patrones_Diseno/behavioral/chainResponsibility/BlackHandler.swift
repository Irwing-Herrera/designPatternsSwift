//
//  BlackHandler.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation

class BlackHandler: ApprovedLoanHandler {
    
    private var next: ApprovedLoanHandler?
    
    func setNext(handler: ApprovedLoanHandler) {
        self.next = handler
    }
    
    func getNext() -> ApprovedLoanHandler {
        return next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        if totalLoan > 5_0000  {
            print("Esta solicitud de tarjeta de credito la maneja la clase BlackHandler")
        } else {
            print("ayuddaaaaaaa")
        }
    }
}
