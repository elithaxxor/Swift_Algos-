//
//  CountStringSegments.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/7/23.
//

import Foundation

func countSegments(_ s: String) -> Int {
    
    var start = 0
    var count = 0
    for i in 0..<s.count {
        
        var chr = s[s.index(s.startIndex, offsetBy: i)]
        var backChr = s[s.index(s.startIndex, offsetBy: i - 1)]
        if chr != " " &&
            (i == 0) ||
            backChr != " "
        {
            count += 1
            
        }
    }
}

var ss = "Hello, my name is John"
