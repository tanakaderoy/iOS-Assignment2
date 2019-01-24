//
//  problem 3.swift
//  Assignment 2
//
//  Created by tanaka on 1/24/19.
//  Copyright © 2019 tanaka. All rights reserved.
//
/*(10 points) Use the reduce method of the Array class to write a function that takes a list of items ordered at a restaurant and computes the total bill.
 Inputs (function parameters): a dictionary consisting of items and their costs, with String keys and Int values. Don’t allow nil values to be stored.
 Return value: the bill total, in pennies (why might we prefer that over dollars?) including a net total meal tax of 7%. You should round to the nearest integer, not truncate.
 Example call: totalCostOf(items: ["Ham": 345, "Cheese": 115])
 Computed result: 492
 Correctly formatted output:
 Problem 3
 Your bill including tax comes to $4.92.*/
import Foundation
func upload(foodDict: [String: Int]) -> Int {
    var total = 0
    
    for price in foodDict{
        
        total = total + price.value
        
    }
    let totalBill = Double(total) + (Double(total) * 0.07)
    print(round(totalBill))
    return( Int(totalBill))
}
