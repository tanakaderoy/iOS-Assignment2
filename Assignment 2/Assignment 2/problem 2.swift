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
func getEnglishRep(num: Int) -> String {

    let textNum = [0: "zero",1: "one", 2: "two", 3: "three",4: "four",5: "five",6: "six",7: "seven",8: "eight",9: "nine"]
    let tens = [0: "",10: "ten", 20: "twenty", 30: "thirty", 40: "fourty", 50: "fifty", 60: "sixty",70: "seventy", 80: "eighty", 90: "ninety"]
    var index = 0
    while index < num {
        if (num >= 100 ){
            print("\(num): not valid \n")
        }
        for word in textNum{
            let onesDigit = num % 10
            if( onesDigit == word.key){
                let tensDigit = num - onesDigit
                for digit in tens {
                    if (tensDigit == digit.key){
                        switch num {
                        case 10,20,30,40,50,60,70,80,90:
                            print("\(num) in english is \(digit.value)")
                            return digit.value
                        case 11:
                            print("\(num) in english is eleven")
                            return "eleven"

                        case 12:
                            print("\(num) in english is twelve")
                            return "twelve"

                        case 13:
                            print("\(num) in english is thirteen")
                            return "thirteen"

                        case 14:
                            print("\(num) in english is fourteen")
                            return "fourteen"

                        case 15:
                            print("\(num) in english is fifteen")
                            return "fifteen"

                        case 16..<20:
                            print("\(num) in english is \(word.value)teen")
                            return "\(word.value)teen"
                        case 69:
                            print("\(num) in english is \(digit.value) \(word.value)")
                            return "nice"

                        default:
                            print("\(num) in english is \(digit.value) \(word.value)")
                            return digit.value == "" ? "\(word.value)" : "\(digit.value) \(word.value)"

                        }
                    }
                }
            }
        }
        index += 1
    }
    return ""
}
func englishWordsOfValues(_ numbers: [Int]) {

    let engNum = numbers.map { (num: Int) ->String in
        return getEnglishRep(num: num)
    }
    print(engNum)

}
