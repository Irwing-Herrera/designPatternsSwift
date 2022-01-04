//
//  OperationAdaptee.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class OperationAdaptee {
    
    var a: Int
    var b: Int
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    
    func sum() -> Int {
        return self.a + self.b
    }
}
