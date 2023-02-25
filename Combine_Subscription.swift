//
//  Combine_Subscription.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/16/23.
//

import SwiftUI
import Combine



/// Simple setup for Subscriber on Datastream
class myClass {
    var dataStream : Int {
        didSet {
            print("Val has been set \(dataStream)")
        }
    }
}

let obj = myClass()
let pub = (0...9).publish
let subscriber = Subscribers.Assign(object: obj, keyPath: \myClass.dataStream)

let cancellable = pub
    .print("cancelling subcrition \(pub)")
    .receive (subscriber : subscriber)





struct Combine_Subscription: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Combine_Subscription_Previews: PreviewProvider {
    static var previews: some View {
        Combine_Subscription()
    }
}
