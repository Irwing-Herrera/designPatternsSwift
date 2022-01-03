//
//  MessagePublisher.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class MessagePublisher: Subject {
    
    var observers = [Observer]()
    
    func attach(observer: Observer) {
        self.observers.append(observer)
    }
    
    func detacht(observer: Observer) {
        if let index = self.observers.firstIndex(where: { $0 as AnyObject === observer as AnyObject}) {
            self.observers.remove(at: index)
        }
    }
    
    func notifyUpdate(trafficLight: TrafficLight) {
        self.observers.forEach({ $0.update(trafficLight: trafficLight) })
    }
    
    
}
