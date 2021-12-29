//
//  ApprovedLoanHandler.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation

protocol ApprovedLoanHandler {
    func setNext(handler: ApprovedLoanHandler)
    func getNext() -> ApprovedLoanHandler
    func creditCardRequest(totalLoan: Int)
}
