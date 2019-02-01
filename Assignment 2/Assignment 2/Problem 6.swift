/*## Problem 6
(10 points) Building on Exercise 5, change the return value from Int to a custom struct (which you must declare beforehand) with 3 stored properties: base food cost, tax, and tip. Add a 4th, total, as a computed property of that struct. Again, assume meal tax of 7.0%. Also set up a description property, also computed, that outputs a printable breakdown and summary (all four values). Use it for the final output.

Example call: totalCostWithTipOf(["Ham": 345, "Cheese": 115], serviceLevel: .Good)

Return value: A struct containing: { baseCost: 460, tax: 32, tip: 83 } where retVal.total would evaluate to: 575, and retVal.description would evaluate to: base: $4.60 tax: $0.32 tip: $0.83 total: $5.75

Correctly formatted output:
*Problem 6*
Your bill summary:
base: $4.60
tax: $0.32
tip: $0.83
total: $5.75*/
import Foundation

struct foodOrder {
    var baseCost: Int
    var serviceLevel: ServiceLevel
    

    var tipAmount: Int{
        return Int(Double(baseCost) * serviceLevel.rawValue)
    }
    var tax: Int{
        return Int(Double(baseCost) * 0.07)
    }
    var total: Int
    var description: String{
        let desc = ("base:\(String(format: "$%.02f", Double(baseCost) * 0.01)) tax:\(String(format: "$%.02f", Double(tax) * 0.01)) tip:\(String(format: "$%.02f", Double(tipAmount) * 0.01)) total:\(String(format: "$%.02f", Double(total) * 0.01))")
        
    return desc
        
    }
    
    
    
    
    
}
func totalCostP6(foodDict: [String: Int], serviceLevel: ServiceLevel) -> foodOrder {
    
    let tipPercentage = serviceLevel.rawValue
    
    
    
    
    
    
    
    var total = 0.0
    var baseCost = 0.0
    
    for price in foodDict{
        baseCost = Double(price.value) + baseCost
        
        total = ((baseCost) + ((Double(price.value)) * tipPercentage))
        
    }
    
    let totalBill = ((total) + ((total) * 0.07))

    
    let foodBill = foodOrder(baseCost: Int(baseCost), serviceLevel: .Excellent, total: Int(totalBill))
    return foodBill
}

