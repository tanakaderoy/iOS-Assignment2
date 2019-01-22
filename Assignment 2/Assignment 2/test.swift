import Foundation


print("Problem 1: ")

var rangeList =  [9,37,900,736,40,50]
for rangeNum in 0 ..< rangeList.count {
    if rangeList[rangeNum] > 50 {
        print ("Range-Style Loop: \(rangeList[rangeNum])")
}
}


var ist = [1,50,566,764,12,33]
for num in ist{
    if (num > 50){
        print("For in loop: \(num)")
    }
}

let fiveList = [10,20,50,51,70,90]
var index = 0
while index < fiveList.count {
    if (fiveList[index] > 50){
        print("While loop: \(fiveList[index])")
        
        
    }
    index += 1
}

//problem 2


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
englishWordsOfValues([1,2])





/*(10 points) Use the reduce method of the Array class to write a function that takes a list of items ordered at a restaurant and computes the total bill.

Inputs (function parameters): a dictionary consisting of items and their costs, with String keys and Int values. Don’t allow nil values to be stored.

Return value: the bill total, in pennies (why might we prefer that over dollars?) including a net total meal tax of 7%. You should round to the nearest integer, not truncate.

Example call: totalCostOf(items: ["Ham": 345, "Cheese": 115])

Computed result: 492

Correctly formatted output:
Problem 3
Your bill including tax comes to $4.92.*/





func totalCostOf(foodDict: [String: Int]) -> Int {
var total = 0
     var testprice = 0
    if(!foodDict.isEmpty){
    
   
   for price in foodDict{
     
     total = total + price.value
     
   }
    let totalBill = Double(total) + (Double(total) * 0.07)
   print(round(totalBill))
   testprice = ( Int(totalBill)) 
}else{
    print("not valid")
}
// https://stackoverflow.com/questions/41558832/how-to-format-a-double-into-currency-swift-3
let currencyFormatter = NumberFormatter()
currencyFormatter.usesGroupingSeparator = true
currencyFormatter.numberStyle = .currency
// localize to your grouping and decimal separator
currencyFormatter.locale = Locale.current

// We'll force unwrap with the !, if you've got defined data you may need more error checking

let priceString = currencyFormatter.string(from: NSNumber(value: Double(testprice) * 0.01))! // Displays $9,999.99 in the US locale
print("Corectly formatted output: \(priceString )")
return testprice
}


totalCostOf(foodDict: ["Ham": 345, "Cheese": 115])
