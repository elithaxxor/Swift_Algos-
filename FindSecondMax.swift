//
//  FindSecondMax.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/7/23.
//

import Foundation

func findSecondMax(_ arr : [Int]) -> Int {
    var first = 0
    var second = 1
    var currMax = 0
    var max = 0
    for i in 0..<arr.count {
        currMax = arr[i]
        if currMax > max {
             max = currMax
        }
    }
    return max
    
}

var arr = [1, 2, 4, 2, 9 , 2]

var res = findSecondMax(arr)
print(res)
