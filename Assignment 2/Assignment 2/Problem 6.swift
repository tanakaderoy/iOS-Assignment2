/*
    
struct retVal(baseCost: Double, tax: Double, tip: Double) {
    var baseCost = 0
    var tax = 0
    var tip = 0
    var total = 0
    
    
}
func totalCostWithTipOf(foodDict: [String: Int], serviceLevel: ServiceLevel) -> retVal {

var tipPercentage = 0.0
switch serviceLevel {
case .Good:
    tipPercentage = 0.18
case .Bad:
    tipPercentage = 0.05                               
case .Excellent:
    tipPercentage = 0.25

}

    
    



    var total = 0.0
    var baseCost = 0.0
    var tax = 0.0
    var tip = 0.0
   
   for price in foodDict{
     
     total = (((total + Double(price.value)) + ((Double(price.value)) * tipPercentage)))
     baseCost = Double(price.value) + baseCost
     tip =  baseCost * tipPercentage
     tax = (baseCost * 0.07)
     
     
   }
   print(total)
    let totalBill = ((total) + ((total) * 0.07))
    let amountString = String(format: "$%.02f", totalBill*0.01)
   print("Your bill inclidng tax comes to \(amountString)")
   return( retVal(baseCost: baseCost, tax: tax, tip: tip )) 
}



*/
