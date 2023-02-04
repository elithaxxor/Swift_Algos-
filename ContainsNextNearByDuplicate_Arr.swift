
//219. Contains Duplicate II
//Given an integer array nums and an integer k, return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.


import Foundation


func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    
    var hashMap = [Int: Int]()
    for (idx, val) in nums.enumerated()
    {
        if let num = hashMap[val] {
            if abs(idx - num) <= k
            {
                print("num \(num)")
                print(idx - num)
                return true
            }
        }
        
        hashMap[val] = idx
    }
    return false
    
}

let array = [1, 2, 3, 3]
let k = 3
var res = containsNearbyDuplicate(array, k)
print(res)
