//
//  BuddyString_String.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/4/23.
//


//Given two strings s and goal, return true if you can swap two letters in s so the result is equal to goal, otherwise, return false.

//Swapping letters is defined as taking two indices i and j (0-indexed) such that i != j and swapping the characters at s[i] and s[j].


import Foundation

func buddyStrings(_ s: String, _ goal: String) -> Bool {
    if(s.count != goal.count ) { return false }
    
    var freqMap = Array(repeating: 0, count: 26)

    for (char1, char2) in zip(str1, str2) {
          let index = getIndex(char1)
          charFreqTable[index] += 1
      }
    
    for count in charFreqTable {
        if count > 1 {
            return true
        }
    }
    return false
}




func getIndex(_ char: Character) -> Int {
     Int(String(char.asciiValue!))! - Int(String(Character("a").asciiValue!))!
 }
