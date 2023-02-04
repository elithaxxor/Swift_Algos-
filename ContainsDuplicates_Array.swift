//
//  ContainsDuplicates_Array.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/4/23.
//

import Foundation

// Function to check arry for duplicates.. returns tru or false
func containsDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    
    var dict = [Int : Bool] ()
    for i in 0..<nums.count {
        var num = nums[i]
        if(dict[num] != nil ) {
            return true
        } else {
            dict[num] = false
        }
    }
    return false
}
