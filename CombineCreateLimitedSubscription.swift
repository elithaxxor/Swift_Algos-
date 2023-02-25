//
//  combineCreateLimitedSubscription.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/15/23.
//

import Foundation
import Combine

func createLimitedSubscription() {
    
    // creates a publisher for a string array
    let foodbank = ["troy", "apple", "ave", "ps118"].publisher
    
    let subscription = foodbank.sink {
        (completion) in
        print("completion: \(completion)")
    } receiveValue: {
        foodItem in
        print("food item \(foodItem)")
    }
}
