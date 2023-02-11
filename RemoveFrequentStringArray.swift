//
//  RemoveFrequentStringArray.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/7/23.
//

import Foundation


class removeDuplicateFromStringArray{
    func receiver(_ arr : [String]) -> [String] {
        
        var res = [String]()
        var hashMap = [String : Int]()
        var count = 1
        
        //  [LOOP 1] loop, for every value found, add 1 to hash map -
        
        for i in 0..<arr.count {
           var currVal = arr[i]
            if hashMap.hashValue > 1 {
                // ... add +1 value for every found occurance
                hashMap[currVal] = count
                count += 1
            }
            // continue loop, add 1 for each occurance
            hashMap[currVal] = 1
        }
        
        print(hashMap)
        // [LOOP 2]
        //---  the hashMap will contain a key-value index of what is found ^ ... if value == 1, then it is a unique pair, save unique pair in res
        
        for (unique, value) in hashMap {
            if value == 1 { // either if value or is greater than 1
                res.append(unique) // may have to use insert function
            }
        }
        return res
    }
}
let test = removeDuplicateFromStringArray()
print(test.receiver(["apple", "pear", "pear", "banana", "apple"]))

