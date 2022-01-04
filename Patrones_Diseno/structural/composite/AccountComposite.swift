//
//  AccountComposite.swift
//  Patrones_Diseno
//
//  Created by MacBook on 04/01/22.
//

import Foundation

class AccountComposite: AccountComponent {
    
    var childAccounts = [AccountComponent]()
    
    func addAccount(account: AccountComponent) {
        self.childAccounts.append(account)
    }
    
    func showAccountName() {
        for child in self.childAccounts {
            print(child.showAccountName())
        }
    }
}
