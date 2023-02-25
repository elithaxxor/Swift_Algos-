//
//  CombineURLParsing.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/16/23.
//

import Foundation
import Combine

let subscription = URLSession.shared.dataTaskPublisher(for: URL(string "www.json.com/json.json" ))
    .map( { result in
        print("Checking if thraed is running on main \(Thread.isMainThread)")
        
    })
    .subscribe(on: DispatchQueue.main)
    .receive(on: DispatchQueue.main)
    .sink(receiveCompletion: { completion  in
        print("completion \(completion)")
    }, receiveValue: { value in
        print(Thread.current.isMainThread)
    })


