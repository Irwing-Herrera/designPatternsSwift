//
//  Card.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation

class Card {
    private var cardType: String = ""
    private var number: String = ""
    private var expired: Int = 0
    
    func showCard() {
        print("Tarjeta \(cardType) - \(number) - \(expired)")
    }
    
    class CardBuilder {
        private var innerCard = Card()
        
        func cardType(cardType: String) -> CardBuilder {
            self.innerCard.cardType = cardType
            return self
        }
        
        func number(number: String) -> CardBuilder {
            self.innerCard.number = number
            return self
        }
        
        func expired(expired: Int) -> CardBuilder {
            self.innerCard.expired = expired
            return self
        }
        
        func build() -> Card {
            return self.innerCard
        }
    }
}
