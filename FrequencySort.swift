//
//  FrequencySort.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/7/23.
//

import Foundation

func frequencySort(_ s: String) -> String {
    if s.isEmpty { return "" }
    let buffer = Array(s)
    var freq: [Character: Int] = [:]
    
    for char in buffer {
        freq[char, default: 0] += 1
    }
    
    let sorted = freq.sorted { $0.1 > $1.1 }
    
}

