//
//  MostFrequentEven_Array.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/4/23.
//

import Foundation
func mostFrequentEven(_ nums: [Int]) -> Int {
    let dict = Dictionary(nums.map{($0, 1)},uniquingKeysWith: +).filter{$0.key % 2 == 0}
    let max = dict.values.max()
    
    if max == nil {
        return -1
    }
    
    let temp = dict.filter{ $0.value == max}
    
    if temp.count == 1 {
        return temp.keys.first!
    } else {
        var answer = Int.max
        for key in temp.keys {
            if answer > key {
                answer = key
            }
        }
        return answer
    }
}

