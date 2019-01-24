//
//  main.swift
//  Assignment 2
//
//  Created by tanaka on 1/15/19.
//  Copyright © 2019 tanaka. All rights reserved.
//
/*
 ## Problem 1
 (5 points) Write a range-style for loop that walks through an array of integers, printing out only those above (not including) 50. (The range is used to generate all valid array indices.) Then implement the same functionality using a while loop with an explicit variable declaration and increment step. Then implement the same using true array iteration with for...in. Declare a few hard-coded arrays to test your function. Recall the test case requirements: as test inputs, use an empty array, a single-length array, an array that will generate no output, an array that generates one value only on output, an array where all numbers pass, as well as typical inputs where only some numbers pass. You should be getting the idea here: always test the extremes as well as ordinary cases.
 
 ## Problem 2
 (10 points) Use the map method of the Array class to write a function that accepts an array of integers and produces a corresponding array of printed representations in English words. If the number falls outside of the range [0...99], compute nil instead. This is a great opportunity to practice with the Dictionary type to keep your code compact.
 
 Do not consult reference materials for generating this algorithm and don’t use built-in conversion functions that do this for you (specifically NumberFormatter). Part of the essence of this problem is to compose the underlying logical idea and express it in the Swift primitive operations. Try to make it efficient; if you have 99 separate cases that’s missing the intent. If you need help coming up with this algorithm discuss it on Blackboard.
 
 Example call: englishWordsOfValues([7, 2, -13, 300, 6, 26])\
 *Problem 2*\
 7: seven\
 2: two\
 -13: no answer\
 300: no answer\
 6: six\
 26: twenty-six
 
 ## Problem 3
 (10 points) Use the reduce method of the Array class to write a function that takes a list of items ordered at a restaurant and computes the total bill.
 
 Inputs (function parameters): a dictionary consisting of items and their costs, with String keys and Int values. Don’t allow nil values to be stored.
 
 Return value: the bill total, in pennies (why might we prefer that over dollars?) including a net total meal tax of 7%. You should round to the nearest integer, not truncate.
 
 Example call:
 totalCostOf(items: ["Ham": 345, "Cheese": 115])
 
 Computed result: 492
 
 Correctly formatted output:\
 *Problem 3*\
 Your bill including tax comes to $4.92.
 
 ## Problem 4
 (10 points) Write a function that uses the filter method of the Array class to produce a new array of exactly the primes contained in an input array.
 
 Do not consult reference materials for generating this algorithm. Part of the essence of this problem is to compose the underlying mathematical idea and express it in the Swift primitive operations. If you need help coming up with this algorithm discuss it on Blackboard.
 
 The underlying idea is simple: generate-and-test. Generate a “naive” list of all possible factors of a number. Looking over each candidate in turn, find out if it divides the number evenly. If so, the number has (at least!) that candidate as a factor, so it is not prime, and you can stop testing.
 
 Prime numbers, by definition, are greater than 1. Ignore negative inputs: you can skip right over them as your filtering progresses.
 
 You must write a helper function to determine if a given integer is prime. The helper function must be an extension of the Int class. For example, 3.isPrime() should evaluate to true while 4.isPrime() returns false.
 
 Example call:\
 primesOf(values: [3, 1, -3, 27, 29, 3, 7, 2, 7, 83, 91])
 
 Computed Result:\
 [3, 29, 3, 7, 2, 7, 83]
 
 Formatted Output:\
 *Problem 4*\
 The following values are positive prime: [3, 29, 3, 7, 2, 7, 83]
 
 ## Problem 5
 (10 points) Building on Exercise 3, add a tip calculating aspect. Define a global enum that encodes 3-5 discrete levels of service (e.g. poor, good, excellent). Let the rawValue of each service level be an appropriate tipping percentage of your choosing, expressed as a floating point value between 0 and 1. Create an extended version of the function that accepts a second parameter of that enum type. The total returned by this function should include the tip. For the sake of consistency, all restaurant-related problems will calculate the tip on the base total, not including tax.
 Example call (where .Good = 15%):
 
 totalCostWithTipOf(items: ["Ham": 345, "Cheese": 115], serviceLevel: ServiceLevel.Good)
 
 Return value: 561
 
 Correctly formatted output:\
 *Problem 5*\
 Your bill including tax and tip comes to $5.61.
 
 (Self-check: why is ServiceLevel.Good unnecessarily verbose in the above context?)
 
 ## Problem 6
 (10 points) Building on Exercise 5, change the return value from Int to a custom struct (which you must declare beforehand) with 3 stored properties: base food cost, tax, and tip. Add a 4th, total, as a computed property of that struct. Again, assume meal tax of 7.0%. Also set up a description property, also computed, that outputs a printable breakdown and summary (all four values). Use it for the final output.
 
 Example call: totalCostWithTipOf(["Ham": 345, "Cheese": 115], serviceLevel: .Good)
 
 Return value: A struct containing: { baseCost: 460, tax: 32, tip: 83 } where retVal.total would evaluate to: 575, and retVal.description would evaluate to: base: $4.60 tax: $0.32 tip: $0.83 total: $5.75
 
 Correctly formatted output:
 *Problem 6*
 Your bill summary:
 base: $4.60
 tax: $0.32
 tip: $0.83
 total: $5.75
 
 ## Problem 7
 (10 points) Object Orientation: The above classes are of the old-fashioned batch processing style: a pre-defined input is fed into a function and output is created. Now, create a class RestaurantBill which tracks incremental changes to a restaurant bill. As items are added incrementally, the class should be capable of reporting the current total, current item, and other aspects of the check. All required details are below. Note that the final total is implemented much differently than in #6; it is a computed property in #6, while here in #7 it is a stored property that keeps up to date by a property observer on other stored properties that affect it.
 Implement the members:
 
 addItem()
 method that takes a String description, integer quantity, and integer price per item (pennies) and stores it in the check. If an item of exactly that description already exists in the check, the item count is instead incremented and the redundant price is ignored. Think about which representation makes it easiest to find if the description passed in already exists. Parallel (two separate) arrays are frowned upon here, so youâ€™ll need a helper struct that tracks the aspects of the item (price & quantity), and to maintain a collection of these structs.
 
 serviceLevel
 stored property of enum type as in #4.
 
 baseTotal
 computed property representing total without tip or tax. Graduate credit: Use reduce() for this.
 
 finalTotal
 A stored property representing total including tip and tax (why do we always represent dollar figures in pennies?). Since it is stored, you must observe changes to other stored properties that affect it and recompute it when they do. This may not feel natural, but it is included to drive home the idea of property observers.
 
 description
 Computed property that produces a line item invoice (in no particular order), with each line showing: item description, quantity, and line item total), as well as a total.
 
 Example: \
 myBill = RestaurantBill()\
 myBill.addItem("Ham", quantity: 1, price: 345)\
 myBill.addItem("Cheese", quantity: 1, price: 115)\
 myBill.addItem("Ham", quantity: 2, price: 0) // price already known, this time it's ignored\
 \
 myBill.description would evaluate to:\
 Ham (3 @$3.45): $10.35\
 Cheese (1 @1.15): $1.15\
 Base Total: $11.50
 
 For the program output, use the description above, as well as clearly labeled values for serviceLevel and finalTotal, to inform the user of the entire bill for each test case. For serviceLevel, show the value in percent and dollar amount. Have at least 6 test cases, where you probe edge conditions, such as an empty bill, or unreasonable values (-3 salads, 0 hamburgers at $4.99 each, a pickle that costs -0.25)
 */
import Foundation


print("Problem 1: ")
loops([1,2,3,4,5,50,70,900,367])

//problem 2

print("Problem 2: ")

englishWordsOfValues([1,2,-1,100,99,24])

print("***Problem 3***")
upload(foodDict: ["Ham": 345, "Cheese": 115])

print("Problem 4")
print(factorial(a: ))
let digits = [3,1,-3,27,20,3,7,2,7,83,91]
let prime = digits.filter{(factorial(a: $0) % $0 + 1) == $0}
print(prime)
//primesOf([3, 1, -3, 27, 29, 3, 7, 2, 7, 83, 91])
