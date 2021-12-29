//
//  CreditCardsCollection.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation

class CreditCardsCollection {
    
    var items = [CreditCard]()
    
    func append(_ item: CreditCard) {
        self.items.append(item)
    }
}

extension CreditCardsCollection: Sequence {
    
    func makeIterator() -> CreditCardIterator {
        return CreditCardIterator(cards: self)
    }
}
