

    

func totalCostWithTipOf(foodDict: [String: Int], serviceLevel: ServiceLevel) -> Int {

let tipPercentage = serviceLevel.rawValue

    var total = 0.0
   
   for price in foodDict{
     
     total = (((total + Double(price.value)) + ((Double(price.value)) * tipPercentage)))
     
   }
    print("Bill before tax: \(total)")
    let totalBill = ((total) + ((total) * 0.07))
    let amountString = String(format: "$%.02f", totalBill*0.01)
   print("Your bill inclidng tax comes to \(amountString)")
   return( Int(totalBill)) 
}





