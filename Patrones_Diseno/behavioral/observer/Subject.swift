//
//  Subject.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

protocol Subject {
    func attach(observer: Observer)
    func detacht(observer: Observer)
    func notifyUpdate(trafficLight: TrafficLight)
}
