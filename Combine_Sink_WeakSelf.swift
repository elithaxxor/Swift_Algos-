//
//  Combine_Sink_WeakSelf.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/16/23.
//

import Foundation


class ViewModel  : UIViewController, UITextFieldDelegate {
    
    
    var user = CurrentValueSubject<User, Never>(User(name: "Bob", id: 1))
    var subscrptions = Set<AnyCancellable>
    var userID = Int = 1 {
        didSet {
            print("userId Changed")
        }
    }
    
    init() { /// maps the "id" portion of CurrentValueSubject in
        user.map{(\.id) }
            // .assign(to: \.userID, on: self)
            .sink { [unowned self] value in
                userId = value
            }
            .store(in: &subscriptions)
    }
    
    deinit{
        print("denit")
    }
}


var viewModel = ViewModel()
viewModel.user.send(User(name: "hello", id: 2))

