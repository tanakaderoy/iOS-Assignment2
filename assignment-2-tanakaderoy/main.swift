//
//  main.swift
//  Assignment 2
//
//  Created by tanaka on 1/15/19.
//  Copyright © 2019 tanaka. All rights reserved.
//

import Foundation

print("Hello, World!")
func makeList(_ n: Int) -> [Int] {//stackoverflow
    return (0..<n).map{ _ in Int(arc4random_uniform(4)+1)}
}

var list = makeList(5)
for num in list{
    if (num > 50){
        print(num)
    }
}

let fiveList = [10,20,50,70,90]
var index = 0
while index < fiveList.count {
    if (fiveList[index] > 50){
        print(fiveList[index])
        
        
    }
    index += 1
}

//problem 2
func englishWordsOfValues(_ numbers: [Int]) {
    var textNum = [1: "one", 2: "two", 3: "three",4: "four",5: "five",6: "six",7: "seven",8: "eight",9: "nine"]
    var tens = [10: "ten", 20: "twenty", 30: "thirty", 40: "fourty", 50: "fifty", 60: "sixty",70: "seventy", 80: "eighty", 90: "ninety"]
    var index = 0
    while index < numbers.count {
        for word in textNum{
            if(numbers[index] == word.key){
                print(word.value)
            }else{
                if(numbers[index] >= 20 && numbers[index] <= 29){
                    print(numbers[index])
                }
            }
        }
        index += 1
    }
    
}
/*englishWordsOfValues(fiveList)
englishWordsOfValues(makeList(10))
*/
englishWordsOfValues([20,21,22,23])
