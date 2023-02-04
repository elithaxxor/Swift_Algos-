//
//  CountAstrix_String.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/4/23.
//

import Foundation

func countAsterisks(_ s: String) -> Int {
    var sum = 0
    var outside = true
    
    s.forEach {
        switch $0 {
        case "*" : if outside {
            sum += 1
        }
        case "|" : outside = !outside
        default: return
        }
    }
    return sum
}
var res = countAsterisks("l|*e*et|c**o|*de|")
print(res)


