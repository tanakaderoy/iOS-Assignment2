//
//  main.swift
//  Assignment 2
//
//  Created by tanaka on 1/15/19.
//  Copyright © 2019 tanaka. All rights reserved.
//
import Foundation


print("Problem 1: \n")

print("Regular greater case:  ")
print( loops([1,2,3,4,5,50,70,900,367]))
print("All invalid case: ")
print(loops([1,2,3,4,5,-1]))
print("Non greater than 50 case: ")
 print(loops([1,2,3,4,-5,50]))
print("Empty case: ")
print(loops([]))




print("Problem 2: \n")

print("Both cases for invalid: ")
print("\(englishWordsOfValues([1,2,-1,100,99,24]))")
print("Regular Case: ")
print("\(englishWordsOfValues([1,10,15,12,19,22,30,99,87,67]))")
print("Empty Case: ")
print("\(englishWordsOfValues([]))")

print("***Problem 3*** \n")

print("Computed result: \(totalCostOf(foodDict: ["Ham": 345, "Cheese": 115]))\n")


print("Problem 4 \n")
var digits = [3, 1, -3, 27, 29, 3, 7, 2, 7, 83, 91]
print("Primes are: \(primesOf(digits))\n")
print("Empty Case: \(primesOf([]))\n")

print("Problem 5 \n")
print("Computed result: \(totalCostWithTipOf(foodDict: ["Ham": 345, "Cheese": 115], serviceLevel:ServiceLevel.Good))\n")
print("Problem 6 \n")
let p6 = totalCostP6(foodDict: ["Ham": 345, "Cheese": 115], serviceLevel: .Excellent)
print(p6.description)
print("Problem 7 \n")
var myBill = RestaurantBill()
myBill.addItem("Ham", quantity: 1, price: 345)
myBill.addItem("Cheese", quantity: 1, price: 115)
myBill.addItem("Ham", quantity: 2, price: 0)
myBill.description()




