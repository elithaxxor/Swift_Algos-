//
//  RemoveDuplicatesArray.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/7/23.
//

import Foundation


func removeDuplicates(_ arr: [Int]) -> Int {
    
    var hashMap = [Int : Int]()
    var count = 1
    var res = [Int]()
    
    // loop 1 -> map duplicates to a hashmap
    // add +1 for each new occurance
    // addd 1 for each occurance
    
    for i in 0..<arr.count {
        var curr = arr[i]
        
        if curr == hashMap.hashValue {
            hashMap[curr] = count
            count += 1
        }
        // set values to 1 if first occurance
        hashMap[curr] = 1
    }
    
    // loop 2 -> anything above one is a duplicate, so add key value 1 to new array
    
    for (unique, value) in hashMap {
        if value == 1 {
            res.append(unique)
        }
    }
    // return
    
}

var a = [1, 2, 2, 4, 5, 2 ]
