//
//  problem 1.swift
//  Assignment 2
//
//  Created by tanaka on 1/24/19.
//  Copyright © 2019 tanaka. All rights reserved.
//
/*
 ## Problem 1
 (5 points) Write a range-style for loop that walks through an array of integers, printing out only those above (not including) 50. (The range is used to generate all valid array indices.) Then implement the same functionality using a while loop with an explicit variable declaration and increment step. Then implement the same using true array iteration with for...in. Declare a few hard-coded arrays to test your function. Recall the test case requirements: as test inputs, use an empty array, a single-length array, an array that will generate no output, an array that generates one value only on output, an array where all numbers pass, as well as typical inputs where only some numbers pass. You should be getting the idea here: always test the extremes as well as ordinary cases.
 */
import Foundation
//Range style loop
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
