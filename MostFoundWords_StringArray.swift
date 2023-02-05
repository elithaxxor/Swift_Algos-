
/// 2114. Maximum Number of Words Found in Sentences


//You are given an array of strings sentences, where each sentences[i] represents a single sentence.
//Return the maximum number of words that appear in a single sentence.


import Foundation

func mostWordsFound(_ sentences: [String]) -> Int {
    var end = sentences.count
    var count = 1
    var max = 0
    
    for i in 0..<sentences.count {
        var childCount = sentences[i].split(separator: " ").count
        print(sentences[i].split(separator:  " ")) // splits arr by ""
        print(sentences[i].split(separator:  " ").count) // returns lenght of each individual sentence
        if childCount > max {
            print("current max \(max)")
            max = childCount
        }
    }
    return max
}
