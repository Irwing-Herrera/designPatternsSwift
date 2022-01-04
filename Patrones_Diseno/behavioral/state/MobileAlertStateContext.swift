//
//  MobileAlertStateContext.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class MobileAlertStateContext {
   
    var currentState: MobileAlertState = Sound()
    
    func setState(state: MobileAlertState) {
        self.currentState = state
    }
    
    func alert() {
        self.currentState.alert(context: self)
    }
}
