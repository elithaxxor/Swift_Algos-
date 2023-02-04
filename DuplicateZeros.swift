//
//  DuplicateZeros.swift


/*
 Given a fixed-length integer array arr, duplicate each occurrence of zero, shifting the remaining elements to the right.
 */

import Foundation

var dupArr = [1, 3, 4 , 5, 2 , 9 , 2]
duplicateZeros(arr: dupArr)

func duplicateZeros(_ arr: inout [Int]) {
    var start = 0
    var end = arr.count
    var idx = 0
    while (idx < end) {
        if (arr[idx] == 0 ) {
            idx += 1
            arr.insert(0, at: idx)
            arr.removeLast()
        }
         idx += 1
    }
    print (arr)

}

/// Input: arr = [1,0,2,3,0,4,5,0]
/// Expected Output: [1,0,0,2,3,0,0,4]


