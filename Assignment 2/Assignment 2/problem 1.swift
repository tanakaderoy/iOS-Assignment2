//
//  problem 1.swift
//  Assignment 2
//
//  Created by tanaka on 1/24/19.
//  Copyright © 2019 tanaka. All rights reserved.
//

import Foundation
func loops(_ numbers: [Int]) {
var rangeList = numbers
for rangeNum in 0 ..< rangeList.count {
    if rangeList[rangeNum] > 50 {
        print ("Range-Style Loop: \(rangeList[rangeNum])")
    }
}



    let forInList = numbers
for num in forInList{
    if (num > 50){
        print("For in loop: \(num)")
    }
}

let whileList = numbers
var index = 0
while index < whileList.count {
    if (whileList[index] > 50){
        print("While loop: \(whileList[index])")
        
        
    }
    index += 1
}
}
