
func getLucky(_ s: String, _ k: Int) -> Int {
    
    // map string to array
    let aa = Array(s)
    // Create an alphabet dict
    var dict2: [Character : Int] = [
        "a" : 1,
        "b" : 2,
        "c" : 3,
        "d" : 4,
        "e" : 5,
        "f" : 6,
        "g" : 7,
        "h" : 8,
        "i" : 9,
        "j" : 10,
        "k" : 11,
        "l" : 12,
        "m" : 13,
        "n" : 14,
        "o" : 15,
        "p" : 16,
        "q" : 17,
        "r" : 18,
        "s" : 19,
        "t" : 20,
        "u" : 21,
        "v" : 22,
        "w" : 23,
        "x" : 24,
        "y" : 25,
        "z" : 26
    ]
    
    
    var res = [Int]()
    
    for i in 0..<aa.count {
        var curr = aa[i]
        var val = dict2[curr]
        print(dict2[curr])
        res.insert(val!, at: i)
    }
    print(res)
    var sum =  transform(to : res, target: k )
    
    return sum
}

/// To Add Elements in Array by each other
func transform(to res: [Int], target: Int) -> Int{
    var sum = 0
    var sum2 = 0
    var sumArr = [Int]()
    for i in 0..<res.count {
        sum += res[i]
        sumArr.insert(sum, at: i)
    }
    print(sum)
    print(sumArr)
    var j = 0
    while j < target {
        sum2 += sumArr[j]
        j += 1
    }
    print(sum2)
    return sum2
}

