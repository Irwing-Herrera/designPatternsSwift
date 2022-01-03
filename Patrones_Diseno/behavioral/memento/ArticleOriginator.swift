//
//  ArticleOriginator.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

struct ArticleOriginator {
    var id: Int
    var title: String
    var text: String
    
    func createMemento() -> ArticleMemento {
        let memento = ArticleMemento(id: self.id, title: self.title, text: self.text)
        return memento
    }
    
    mutating func restore(memento: ArticleMemento) {
        self.id = memento.id
        self.title = memento.title
        self.text = memento.text
    }
}
