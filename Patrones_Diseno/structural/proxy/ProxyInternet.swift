//
//  ProxyInternet.swift
//  Patrones_Diseno
//
//  Created by MacBook on 04/01/22.
//

import Foundation

class ProxyInternet: Interner {
    
    var internet = AccessToInternet()
    var bannedUrl = [String]()
    
    init() {
        self.bannedUrl.append("netflix.com")
        self.bannedUrl.append("facebook.com")
        self.bannedUrl.append("youtube.com")
    }
    
    func connectTo(url: String) {
        if bannedUrl.contains(url) {
            print("Acceso denegado a pagina: \(url)")
        } else {
            self.internet.connectTo(url: url)
        }
    }
    
    
}
