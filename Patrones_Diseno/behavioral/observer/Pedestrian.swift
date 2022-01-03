//
//  Pedestrian.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class Pedestrian: Observer {
    func update(trafficLight: TrafficLight) {
        if trafficLight.status == "CAR_RED" {
            print("Semaforo Rojo  -> Peaton SI puede pasar")
        } else {
            print("Semaforo Verde -> Peaton NO puede pasar")
        }
    }
}
