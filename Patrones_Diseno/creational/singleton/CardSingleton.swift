//
//  CardSingleton.swift
//  Patrones_Diseno
//
//  Created by MacBook on 29/12/21.
//

import Foundation

class CardSingleton {
    
    static var shared = CardSingleton()
    
    private init() {}
    
    func doSomething() {
        print("Haciendo trabajo de la clase Singleton")
    }
    
}
