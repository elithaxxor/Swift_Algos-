//
//  Combine_SwiftUI_Timer.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/16/23.
//

import Foundation
import SwiftUI


@main struct broadcast {
    @Published var order = receiveBroadcast()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}

class receiveBroadcast : ObservableObject {
    var Model = ["hello", "world", "hows"]
    var items = [Model]()
    
    
    var dataStream : Int {
        if items.count > 0 {
            items.append(item)
        }
        else {
            return 0
        }
    }
    
    
    /// indexes the first element of model
    func remove(item: Model) {
        if let index = items.firstIndex(of: item)
            items.remove(at: index)
    }
    
}
