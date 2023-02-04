//
//  ContainsNearbyDuplicate_Array.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/4/23.
//

import Foundation
class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        
        var dict = [Int : Bool]()

        for i in 0..<nums.count {
            var num = nums[i]
            if(dict[num] != nil ) {
                if abs(i - num) <= k {
                return true
                }
            } else {
                dict[num] = false
            }
        }
        return false
    }
}


// converts itesm array to keyvalue pair, with 1 as placeholder
func freqMap(toMap arr : [Int]) {
    let map = arr.map { ($0, 1) }
    let freqMap = Dictionary(map, uniquingKeysWith: +)
    print(map)
    print(freqMap)

}

// To print the largest Key Value in Hash Map / Dict
func printMaxKey(findMaxKey Map : [Int : Int]) {
    let freqMap = Dictionary(Map.map{($0, 1)},uniquingKeysWith: +).filter{$0.key % 2 == 0}
    let max = freqMap.values.max()
    print(freqMap)
    print(max)
}

// To Enumerate Print Dict with keys and offset
func enumeratedMap(enumerate map : [Int : Int]){
    for (item) in myDictionary.enumerated() {
        print("\(item.offset): \(item.element.key)")
    }
}


// To Print All Keys in HashMap / Dict
func printKeys(toPrint map : [Int : Int])  {
    for key in map.keys {
        print("\(key)")
    }
}


func sortKeys(toSort map : [Int : Int])  {
    let sorted = myDictionary.sorted {$0.key < $1.key}  // or {$0.value < $1.value} to sort using the dictionary values
    print(sorted)
    for element in sorted {
        print("Key = \(element.key) Value = \(element.value)" )
    }
}


// to sort hashmap-dict by values
func sortValues(toSort map : [Int : Int])  {
    let sorted = myDictionary.sorted {$0.value < $1.value}
    print(sorted)
    for element in sorted {
        print("Key = \(element.key) Value = \(element.value)" )
    }
}
