//
//  Detective.swift
//  Patrones_Diseno
//
//  Created by MacBook on 04/01/22.
//

import Foundation

class Detective: Enemy {
    
    let LIFE = 1000
    var weapon = ""
    
    func setWeapon(weapon: String) {
        self.weapon = weapon
        print("Weapon creada: \(weapon)")
    }
    
    func lifePoints() {
        print("La vida de un detective es \(self.LIFE)")
    }
}
