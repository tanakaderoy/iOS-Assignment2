/*## Problem 5
(10 points) Building on Exercise 3, add a tip calculating aspect. Define a global enum that encodes 3-5 discrete levels of service (e.g. poor, good, excellent). Let the rawValue of each service level be an appropriate tipping percentage of your choosing, expressed as a floating point value between 0 and 1. Create an extended version of the function that accepts a second parameter of that enum type. The total returned by this function should include the tip. For the sake of consistency, all restaurant-related problems will calculate the tip on the base total, not including tax.
Example call (where .Good = 15%):

totalCostWithTipOf(items: ["Ham": 345, "Cheese": 115], serviceLevel: ServiceLevel.Good)

Return value: 561

Correctly formatted output:\
*Problem 5*\
Your bill including tax and tip comes to $5.61.

(Self-check: why is ServiceLevel.Good unnecessarily verbose in the above context?)*/
import Foundation

    

func totalCostWithTipOf(foodDict: [String: Int], serviceLevel: ServiceLevel) -> Int {

let tipPercentage = serviceLevel.rawValue

    var total = 0.0
   
   for price in foodDict{
     
     total = (((total + Double(price.value)) + ((Double(price.value)) * tipPercentage)))
     
   }
    print("Bill before tax: \(String(format: "$%.02f", total * 0.01))")
    let totalBill = ((total) + ((total) * 0.07))
    let amountString = String(format: "$%.02f", totalBill*0.01)
   print("Your bill inclidng tax comes to \(amountString)")
   return( Int(totalBill)) 
}





