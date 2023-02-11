//
//  NotificationCenter.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/9/23.
//

import Foundation


// Notification name
let notificationName = "com.hungry"
let notification = Notification.Name(notificationName)

class Test2 {
    let name : String
    let qty : Int
    
    init(name: String, qty: Int) {
        self.name = name
        self.qty = qty
    }
    
    deinit{
        print("name \(name) has been denit")
        print("qty \(qty) has been denit")
    }
    
    private func printUpdate() {
        print("name \(name) avaialble")
        print("qty \(qty) available")
    }
}


// Observer
extension Test2 {
    func addObserver(){
        NotificationCenter.default.post(name: notification, object: nil)
    }
}
