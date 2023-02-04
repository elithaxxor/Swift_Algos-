

/*
 Given two strings a and b, return the length of the longest uncommon subsequence between a and b. If the longest uncommon subsequence does not exist, return -1.
 An uncommon subsequence between two strings is a string that is a subsequence of one but not the other.
 
 A subsequence of a string s is a string that can be obtained after deleting any number of characters from s.
 */

import Foundation
class Solution {
    func findLUSlength(_ a: String, _ b: String) -> Int {
        var aEnd = a.count; var aStart = 0
        var bEnd = b.count; var bStart = 0
        var count = 0
        let aa = Array(a)
        let ab = Array(b)
        while (aStart < aEnd) {
            count += aStart
            while (bStart < bEnd){
                if (aa[aStart] == ab[bStart]) {
                    bStart += 1
                    aStart += 1
                }
                aStart = count
                 bStart += 1
            }
                bStart += 1
                aStart += 1
        }
            return count
        }
    }
