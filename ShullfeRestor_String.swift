

//1528. Shuffle String
//You are given a string s and an integer array indices of the same length. The string s will be shuffled such that the character at the ith position moves to indices[i] in the shuffled string.


// to solve.. make string into array for processing

import Foundation

    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var end = indices.count
        var arr = Array(s)
        var newStr = " "
        print("str \(str)")
        
        for i in 0..<s.count {
            print(indices.firstIndex(of: i))
            if let idx = indices.firstIndex(of: i){
                let str = arr[idx]
                newStr = newStr + String(str)
            }
        }
        return newStr
    }

var indices = [4,5,6,7,0,2,1,3]
var s = "codeleet"



/// use this to access an element or range within a string
/// returns a specific range in string, or specific place


