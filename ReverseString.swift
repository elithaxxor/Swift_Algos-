//
//  ReverseString.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/3/23.
//

import Foundation
func reverseString(_ s: inout [Character]) {
    
    var res = [Int]()
    var end = s.count
    var start = 0
    for i in s.reversed() {
        s[start] = i
         print(i)
         start += 1
    }
}

