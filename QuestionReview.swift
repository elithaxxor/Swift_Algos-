//
//  QuestionReview.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/4/23.
//

import Foundation


//1. Why is this wrong?
let op1: Int = 1
let op2: UInt = 2
let op3: Double = 3.34
var result = op1 + op2 + op3

// Ans: -- Cannot cast, so do direct conversion
var result = Double(op1) + Double(op2) + op3



//2. Why is this wrong?
var defaults = NSUserDefaults.standardUserDefaults()
var userPref = defaults.stringForKey("userPref")!
printString(userPref)

func printString(string: String) {
    println(string)
}

//3.  Ans: NS defualts returns an optional-
let userPref = defaults.stringForKey("userPref")
if userPref != nil {
    printString(userPref!)
}

//.. or use optional binding
if let userPref = defaults.stringForKey("userPref") {
    printString(userPref)
}


// 4 Swift defines the AnyObject type alias to represent instances of any reference type, and it’s internally defined as a protocol.
//.. why is this code wrong?
var array = [AnyObject]()
struct Test {}
array.append(Test())

//.. answer-> Obj-C
// correct answer (#4) --> AnyObject Only Works With NSObjects --> (NSNumber, NSString, NSArray, NSDictionary)

//var array = [AnyObject]()
//array.append(1)
//array.append(2.0)
//array.append("3")
//array.append([4, 5, 6])
//array.append([7: "7", 8: "8"])



class Master {
    lazy var detail: Detail = Detail(master: self)
    
    init() {
        println("Master init")
    }
    
    deinit {
        println("Master deinit")
    }
}

class Detail {
    var master: Master
    
    init(master: Master) {
        println("Detail init")
        self.master = master
    }
    
    deinit {
        println("Detail deinit")
    }
}

func createMaster() {
    var master: Master = Master()
    var detail = master.detail
}
    
createMaster()
