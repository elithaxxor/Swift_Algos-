//
//  NotificationCenterII.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/9/23.
//

import Foundation
import UIKit


let notificationName = Notification.Name(
class SecondViewController : UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad() {
            
            NotificationCenter.default.addObserver(self, selector: #selector(notificationRecvd), name: Notification.Name("colorChanged"), object: nil)
        }
        
        @objc func notificationRecvd() {
            view.backgroundColor = .red
        }
        
        @IBAction func buttonTapped() {
            notificationCenter.defualt.post(name: Notification.Name("colorChanged"), object: nil)
            view.backgroundColor = .red
            
        }
    }
}
