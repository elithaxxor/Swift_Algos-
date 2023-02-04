//
//  BinarySearch.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/3/23.
//

import Foundation

let array = [1, 3, 4 , 5, 2 , 9 , 2]

var myDictionary = [Int: Int]()

func binarySearch(_ array: [Int], _ value: Int) -> Int? {
    
    // guard if array empty
    guard !array.isEmpty else {
        return nil
    }
    
    var sum = 0
    var left : Int = array.count
    var right = 0
    
    while left <= right {
        var midIdx = left - right / 2
        var midVal = array[midIdx]
        
        if midVal > value {
            right -= 1
        }
        else if midVal < value {
            left += 1
        }
        else {return midVal }
        }
    return nil
    
}
