//
//  ViewController.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Creacionales --------------------------------------------------------------------------------
        
        // Factory Method
        //self.testFactoryMethod()
        
        // Abstract Factory
        //self.testAbstractFactory()
        
        // Builder
        //self.testBuilder()
        
        // Prototype
        //self.testPrototype()
        
        // Singleton
        //self.testSingleton()
        
        
        /// Behavioral -----------------------------------------------------------------------------------
        
        // Chain of Responsability
        //self.testChainOfResponsability()
        
        // Command
        //self.testCommand()
        
        // Iterator
        self.testIterator()
    }
    
    private func testIterator() {
        let misTrajetas = CreditCardsCollection()
        misTrajetas.append(CreditCard(type: "Gold"))
        misTrajetas.append(CreditCard(type: "Platinum"))
        misTrajetas.append(CreditCard(type: "Black"))
        
        for card in misTrajetas {
            print(card.type)
        }
    }
    
    private func testCommand() {
        let creditCard = CreditCardReceiver()
        let invoker = CreditCardInvoker()
        invoker.setCommand(command: CreditCardActiveCommand.init(creditCardReceiver: creditCard))
        invoker.run()
    }
    
    private func testChainOfResponsability() {
        let bank = BankHandler()
        bank.creditCardRequest(totalLoan: 5_0000)
    }
    
    private func testSingleton() {
        let instancia1 = CardSingleton.shared
        let instancia2 = CardSingleton.shared
        
        if (instancia1 === instancia2) {
            print("Son lo mesmo")
        }
        
        instancia1.doSomething()
    }
    
    private func testFactoryMethod() {
        var payment: Payment
        payment = PaymentFactory.buildPayment(typePayment: .GOOGLE)
        payment.doPayment()
    }
    
    private func testAbstractFactory() {
        PaymentMethodClient.codigoCliente(factory: MontlyGoogleFactory())
        //PaymentMethodClient.codigoCliente(factory: PaymentInAdvanceCardFactory())
    }
    
    private func testBuilder() {
        let card: Card = Card.CardBuilder()
            .cardType(cardType: "VISA")
            .number(number: "0000 1111 2222 3333")
            .build()
        card.showCard()
    }
    
    private func testPrototype() {
        let original = VisaCard(cardNumber: 1111, cardType: "Credit")
        guard let copy = original.copy() as? VisaCard else {
            return
        }
        
        print("Original \(original.cardName) - \(original.cardType) - \(original.cardNumber)")
        print("Copy     \(copy.cardName) - \(copy.cardType) - \(copy.cardNumber)")
    }


}

