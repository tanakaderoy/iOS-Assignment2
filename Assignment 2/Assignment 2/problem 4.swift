//
//  problem 4.swift
//  Assignment 2
//
//  Created by Student on 1/24/19.
//  Copyright © 2019 tanaka. All rights reserved.
//

import Foundation
/*10 points) Write a function that uses the filter method of the Array class to produce a new array of exactly the primes contained in an input array.
 
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
 The following values are positive prime: [3, 29, 3, 7, 2, 7, 83]*/
//stackoverflow
func factorial(a: Int) -> Int {
    if a == 0{
        return 1
    }else{
        return a * factorial(a: a - 1)
    }
    
}

/*
func primesOf(_ numbers: [Int]) -> [Int] {
    let primes = numbers.filter{((factorial2(a: $0) % ($0+1)/$0)  == $0)}
    return primes
}*/
