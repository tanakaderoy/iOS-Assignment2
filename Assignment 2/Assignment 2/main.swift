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

let fiveList = [10,20,50,51,70,90]
var index = 0
while index < fiveList.count {
    if (fiveList[index] > 50){
        print(fiveList[index])
        
        
    }
    index += 1
}

print("Problem 2: ")
func englishWordsOfValues(_ numbers: [Int]) {
    let textNum = [0: "zero",1: "one", 2: "two", 3: "three",4: "four",5: "five",6: "six",7: "seven",8: "eight",9: "nine"]
    let tens = [0: " ",10: "ten", 20: "twenty", 30: "thirty", 40: "fourty", 50: "fifty", 60: "sixty",70: "seventy", 80: "eighty", 90: "ninety"]
    var index = 0
    
            while index < numbers.count {
            if (numbers[index] >= 100 || numbers.isEmpty ){
                print("\(numbers[index]): not valid")
            }
            for word in textNum{
            
            
            let onesDigit = numbers[index] % 10
            if( onesDigit == word.key){
                let tensDigit = numbers[index] - onesDigit
                for digit in tens {
                    
                    if (tensDigit == digit.key){
                        
                        
                        switch numbers[index] {
                        case 10 :
                            print("\(numbers[index]) in english is \(digit.value)")
                            
                        case 20:
                            print("\(numbers[index]) in english is \(digit.value)")
                        case 30:
                            print("\(numbers[index]) in english is \(digit.value)")
                        case 40:
                            print("\(numbers[index]) in english is \(digit.value)")
                        case 50:
                            print("\(numbers[index]) in english is \(digit.value)")
                        case 60:
                            print("\(numbers[index]) in english is \(digit.value)")
                        case 70:
                            print("\(numbers[index]) in english is \(digit.value)")
                        case 80:
                            print("\(numbers[index]) in english is \(digit.value)")
                        case 90:
                            print("\(numbers[index]) in english is \(digit.value)")
                            case 11:
                            print("\(numbers[index]) in english is eleven")
                            case 12:
                            print("\(numbers[index]) in english is twelve")
                            case 13:
                            print("\(numbers[index]) in english is thirteen")
                            case 14:
                            print("\(numbers[index]) in english is fourteen")
                            case 15:
                            print("\(numbers[index]) in english is fifteen")
                        case 16..<20:
                            print("\(numbers[index]) in english is \(word.value)teen")
                        default:
                            print("\(numbers[index]) in english is \(digit.value) \(word.value)")
                        }
                        
                        /*if numbers[index] == 10 || numbers[index] == 20 || numbers[index] == 30 || numbers[index] == 40 || numbers[index] == 50 || numbers[index] == 60 || numbers[index] == 70 || numbers[index] == 80 || numbers[index] == 90 {
                         print("\(numbers[index]) in english is \(digit.value)")
                         }else{
                         print("\(numbers[index]) in english is: \(digit.value) \(word.value) ")
                         
                         }*/
                    }
                }
            }
            /*else{
             if(numbers[index] >= 20 && numbers[index] <= 29){
             print(numbers[index])
             }
             
             }
             }*/
            
            // }
        }
        index += 1
    }
    
}





    
    

/*englishWordsOfValues(fiveList)
 englishWordsOfValues(makeList(10))
 */
englishWordsOfValues([34,25,18,0,30,-9,-300,300])
