//
//  Carataker.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class Carataker {
    
    private var estados = [ArticleMemento]()
    
    func addMemento(memento: ArticleMemento) {
        self.estados.append(memento)
    }
    
    func getMemento(index: Int) -> ArticleMemento {
        return self.estados[index]
    }
    
}
