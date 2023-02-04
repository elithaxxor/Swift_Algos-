//
//  ContentView.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var res = Array(repeating: 0, count: end)
    for i in 0..<nums.count {
        for j in 1..<nums.count {
            var sum = nums[i] - target
            if nums[i] + nums[j] == target {
                res.append(i)
                res.append(j)
                return res
            }
        }
    }
    return res
}


