//
//  Silent.swift
//  Patrones_Diseno
//
//  Created by MacBook on 03/01/22.
//

import Foundation

class Silent: MobileAlertState {
    func alert(context: MobileAlertStateContext) {
        print("Esta en silencio ...")
    }
}
