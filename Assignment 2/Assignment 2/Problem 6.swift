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

