
    enum ServiceLevel {
    case Good
    case Bad
    case Excellent
} 
    

func totalCostWithTipOf(foodDict: [String: Int], serviceLevel: ServiceLevel) -> Int {

var tipPercentage = 0.0
switch serviceLevel {
case .Good:
    tipPercentage = 0.15
case .Bad:
    tipPercentage = 0.05                               // B
case .Excellent:
    tipPercentage = 0.20

}

    
    



    var total = 0.0
   
   for price in foodDict{
     
     total = (((total + Double(price.value)) + ((Double(price.value)) * tipPercentage)))
     
   }
   print(total)
    let totalBill = ((total) + ((total) * 0.07))
    let amountString = String(format: "$%.02f", totalBill*0.01)
   print("Your bill inclidng tax comes to \(amountString)")
   return( Int(totalBill)) 
}





