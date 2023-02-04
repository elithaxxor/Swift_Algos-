//
//  ShiftString.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/4/23.
//
/*You are given a string s containing lowercase English letters, and a matrix shift, where shift[i] = [directioni, amounti]:

directioni can be 0 (for left shift) or 1 (for right shift).
amounti is the amount by which string s is to be shifted.
A left shift by 1 means remove the first character of s and append it to the end.
Similarly, a right shift by 1 means remove the last character of s and add it to the beginning.
Return the final string after all operations.

 */
import Foundation
let first = array.removeFirst()


func stringShift(_ s: String, _ shift: [[Int]]) -> String {
    var turns = shift.count
    var pos = shift[0]
    var array = s.compactMap{String($0)}

     for i in 0..<shift.count {
         print(shift[i].index(of: i))
     }
        return "123"
     }



var  s = "abc"
var shift = [[0,1],[1,2]]

func reverseArr(_ arr : inout [Int], left : Int, right : Int) {
    var left = left
    var right = right
    while left < right {
        var temp = arr[left]
        arr[left] = arr[right]
        arr[right] = arr[left]
        arr[left] = temp
        left += 1
        right -= 1
    }
}
