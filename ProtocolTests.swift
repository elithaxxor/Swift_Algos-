//
//  ProtocolTests.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/8/23.
//

import Foundation


protocol EmailAccount {
    var userName : String { get }
    var domain : String { get }
    var lastEmailReceived : Date { get }
}


class Gmail : EmailAccount {
    var userName : String { return "John " }
    var domain: String { return "gmail.com" }
    var lastEmailReceived: Date { return Date() }
}
class Yahoo : EmailAccount {
    var userName : String { return "John " }
    var domain: String { return "yahoo.com" }
    var lastEmailReceived: Date { return Date() }
}


struct ViewModel {
    var dummy = " "
}
var viewModel : ViewModel! {
    didSet {
        textLabel?.text = ViewModel.init(dummy: "hi")
        
    }
}
