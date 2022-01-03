//
//  Car.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class Car: Observer {
    func update(trafficLight: TrafficLight) {
        if trafficLight.status == "CAR_RED" {
            print("Semaforo Rojo  -> Coche NO puede pasar")
        } else {
            print("Semaforo Verde -> Coche SI puede pasar")
        }
    }
}
