//
//  EnemyFactory.swift
//  Patrones_Diseno
//
//  Created by MacBook on 04/01/22.
//

import Foundation

class EnemyFactory {
    
    private var enemies = [String: Enemy]()
    
    func getEnemy(type: String) -> Enemy {
        var enemy: Enemy
        
        if self.enemies[type] != nil {
            enemy = self.enemies[type]!
        } else {
            switch type {
            case "Soldier":
                print("Soldado creado")
                enemy = Soldier()
            case "Detective":
                print("Detective creado")
                enemy = Detective()
            default:
                enemy = Detective()
            }
            
            enemies[type] = enemy
            
        }
        
        return enemy
    }
    
}
