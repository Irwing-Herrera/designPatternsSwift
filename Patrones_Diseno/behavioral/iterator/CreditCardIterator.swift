//
//  CreditCardIterator.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation
import UIKit

class CreditCardIterator: IteratorProtocol {
    
    private var position: Int = 0
    let cards: CreditCardsCollection
    
    init(cards: CreditCardsCollection) {
        self.cards = cards
    }
    
    func next() -> CreditCard? {
        defer {
            position += 1
        }
        
        return self.cards.items.count > position ? cards.items[position] : nil
    }
    
}
