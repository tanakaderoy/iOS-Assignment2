 /*## Problem 2
 (10 points) Use the map method of the Array class to write a function that accepts an array of integers and produces a corresponding array of printed representations in English words. If the number falls outside of the range [0...99], compute nil instead. This is a great opportunity to practice with the Dictionary type to keep your code compact.
 
 Do not consult reference materials for generating this algorithm and don’t use built-in conversion functions that do this for you (specifically NumberFormatter). Part of the essence of this problem is to compose the underlying logical idea and express it in the Swift primitive operations. Try to make it efficient; if you have 99 separate cases that’s missing the intent. If you need help coming up with this algorithm discuss it on Blackboard.
 
 Example call: englishWordsOfValues([7, 2, -13, 300, 6, 26])\
 *Problem 2*\
 7: seven\
 2: two\
 -13: no answer\
 300: no answer\
 6: six\
 26: twenty-six*/
import Foundation
func englishWordsOfValues(_ numbers: [Int]) {
    let textNum = [0: "zero",1: "one", 2: "two", 3: "three",4: "four",5: "five",6: "six",7: "seven",8: "eight",9: "nine"]
    let tens = [0: " ",10: "ten", 20: "twenty", 30: "thirty", 40: "fourty", 50: "fifty", 60: "sixty",70: "seventy", 80: "eighty", 90: "ninety"]
    var index = 0
    
    while index < numbers.count {
        if (numbers[index] >= 100 || numbers.isEmpty ){
            print("\(numbers[index]): not valid \n")
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
