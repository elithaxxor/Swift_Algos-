//
//  CopyBuildArray_Array.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/4/23.
//

import Foundation

//// 1920. Build Array from Permutation
//Given a zero-based permutation nums (0-indexed), build an array ans of the same length where ans[i] = nums[nums[i]] for each 0 <= i < nums.length and return it.

func buildArray(_ nums: [Int]) -> [Int] {
        return nums.map { nums[$0] }
    }
func buildArrayII(_ nums: [Int]) -> [Int] {
    
    
}

