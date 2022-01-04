//
//  OperationAdapter.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class OperationAdapter: OperationTarget {
    
    let adaptee: OperationAdaptee
    
    init(adaptee: OperationAdaptee) {
        self.adaptee = adaptee
    }
    
    var getSum: String {
        return String(self.adaptee.sum())
    }
}
