//
//  CombineSubscription.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/15/23.
//

import Foundation
import Combine

func createCombineSubscription () {
    
    
    // create a subscription
    var subscription: AnyCancellable? = Timer.publish(every: 0.5, on: .main, in: .common)
    
        .autoconnect()
        .throttle(for: .seconds(2), scheduler: DispatchQueue, latest: true)
        .scan(0, { (count, _) in
            return count + 1
            
        })
        .filter( {count in
            return count < 6
            
        })
    
        .sink { completion in
            print("data stream completed \(completion)")
        }
receiveValue: { (timeStamp) in
    print("received value \(timeStamp)")
}
}

