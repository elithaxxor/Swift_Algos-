//
//  PrintUniqueWordsString.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/10/23.
//

import Foundation



func removeDuplicates(_ str: String) -> String {
 
    let components = input.components(separatedBy: " ")
    print(components)

    var res = String()
    var hashMap = [Bool : String]()
    
    for i in 0..<components.count {
        var str = components[i]
        print(str)
        
        if hashMap[i] == str && hashMap.hashValue == true {
            hashMap.hashValue = false
        }
        hashMap[i] = true
    }
    
    
}


let components = input.components(separatedBy: " ")
