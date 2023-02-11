//
//  FindCommonCharacters.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/7/23.
//

import Foundation


func findCommonChar(_ arr : [String]) {
    
    var res = ""
    var hashMap = [Character : Int]()
    var count = 0
    
    for i in 0..<arr.count {
        var str = arr[i]
        var chr1 = str[str.index(str.startIndex, offsetBy: i)]
        for j in 0..<str.count {
            var chr = str[str.index(str.startIndex, offsetBy: j)]
            if hashMap.hashValue > 1 {
                hashMap[chr] = count
                count += 1
            }
            hashMap[chr1] = 1
        }
    }
    
    print(hashMap)
    print(res)
}

var input = ["hello", "im", "hello", "adel"]
var res = findCommonChar(input)
print(res)


