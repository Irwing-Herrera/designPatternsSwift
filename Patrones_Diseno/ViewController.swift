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
        //self.testIterator()
        
        // Mediator
        //self.testMediator()
        
        // Memento
        //self.testMemento()
        
        // Observer
        //self.testObserver()
        
        // State
        //self.testState()
         
        // Strategy
        //self.testStrategy()
        
        // Template Method
        //self.testTemplateMethod()
        
        // Visitor
        //self.testVisitor()
        
        /// Estructurales -----------------------------------------------------------------------------------
        
        // Adapter
        //self.testAdapter()
        
        // Bridge
        //self.testBridge()
        
        // Composite
        //self.testComposite()
        
        // Decorator
        //self.testDecorator()
        
        // Facade
        //self.testFacade()
        
        // Flyweight
        //self.testFlyweight()
        
        // Proxy
        self.testProxy()
    }
    
    private func testProxy() {
        let internet = ProxyInternet()
        internet.connectTo(url: "youtube.com")
        internet.connectTo(url: "google.com")
        internet.connectTo(url: "netflix.com")
    }
    
    let enemyType = ["Soldier", "Detective"]
    let weapon = ["Fusil", "Revolver", "Pistola"]
    
    private func getRandomEnemyType() -> String {
        let number = Int.random(in: 0 ..< enemyType.count)
        return enemyType[number]
    }
    
    private func getRandomWeapon() -> String {
        let number = Int.random(in: 0 ..< weapon.count)
        return weapon[number]
    }
    
    private func testFlyweight() {
        let enemyFactory = EnemyFactory()
        
        for _ in 0...10 {
            let enemy = enemyFactory.getEnemy(type: getRandomEnemyType())
            enemy.setWeapon(weapon: getRandomWeapon())
            enemy.lifePoints()
        }
    }
    
    private func testFacade() {
        let facade = CreditMarketfacade()
        
        facade.showCreditBlack()
    }
    
    private func testDecorator() {
        let blacInternationalPayment = IntenatinalPaymenyDecorator(decorated: BlackCreditComponent())
        print("----- Tarjeta Black Configurada -----")
        blacInternationalPayment.showCredit()
        print("")
        let goldInternationalPayment = IntenatinalPaymenyDecorator(decorated: GoldCreditComponent())
        print("----- Tarjeta Gold Configurada -----")
        goldInternationalPayment.showCredit()
    }
    
    private func testComposite() {
        let composite = AccountComposite()
        composite.addAccount(account: CurrentAccountLead())
        composite.addAccount(account: SavingsAccountLead())
        
        composite.showAccountName()
    }
    
    private func testBridge() {
        var classic = ClassicCreditCard(creditCard: SecureCreditCard())
        classic.makePayment() 
        
        classic = ClassicCreditCard(creditCard: UnsecureCreditCard())
        classic.makePayment()
    }
    
    private func testAdapter() {
        let adaptee = OperationAdaptee(a: 5, b: 10)
        if adaptee.sum() == 15 {
            print("Ok Int")
        }
        
        let target = OperationAdapter(adaptee: adaptee)
        
        if target.getSum == "15" {
            print("Ok String")
        }
    }
    
    private func testVisitor() {
        let offert = GassolineOffer()
        offert.accept(visitor: BlackCreditCardVisitor())
    }
    
    private func testTemplateMethod() {
        let paymentMethodVisa = Visa()
        paymentMethodVisa.makePayment()
    }
    
    private func testStrategy() {
        let context = Context(strategyTextFormatter: CapitalStrategyTestFormatter())
        context.publishText(text: "convertir a mayusculas")
    }
    
    private func testState() {
        let context = MobileAlertStateContext()
        context.alert()
        context.alert()
        
        sleep(2)
        
        context.setState(state: Vibration())
        context.alert()
        context.alert()
        
        sleep(2)
        
        context.setState(state: Silent())
        context.alert()
        context.alert()
    }
    
    private func testObserver() {
        let car = Car()
        let pedestrian = Pedestrian()
        var trafficLight = TrafficLight(status: "CAR_GREEN")
        let messagePublisher = MessagePublisher()
        
        messagePublisher.attach(observer: car)
        messagePublisher.attach(observer: pedestrian)
        messagePublisher.notifyUpdate(trafficLight: trafficLight)
        
        sleep(2)
        
        trafficLight.status = "CAR_RED"
        messagePublisher.notifyUpdate(trafficLight: trafficLight)
    }
    
    private func testMemento() {
        let carataket = Carataker()
        var article = ArticleOriginator(id: 1, title: "Memento", text: "Estado 1")
        
        carataket.addMemento(memento: article.createMemento())
        
        article.text = "Estado 2"
        print(article.text)
        
        carataket.addMemento(memento: article.createMemento())
        
        let memento1: ArticleMemento = carataket.getMemento(index: 0)
        let memento2: ArticleMemento = carataket.getMemento(index: 1)
        
        article.restore(memento: memento1)
        print(article.text)
        
        article.restore(memento: memento2)
        print(article.text)
    }
    
    private func testMediator() {
        let mediator = ConcreteMediator()
        let user1 = ConcreteColleague1(mediator: mediator)
        let user2 = ConcreteColleague2(mediator: mediator)
        
        mediator.setColleague1(colleague1: user1)
        mediator.setColleague2(colleague2: user2)
        
        user1.send(message: "Hola usuario 2")
        user2.send(message: "Hola usuario 1")
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

