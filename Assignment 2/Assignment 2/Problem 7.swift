//
//  Problem 7.swift
//  Assignment 2
//
//  Created by penlope mazivanhanga on 1/31/19.
//  Copyright © 2019 tanaka. All rights reserved.
//
/*
 ## Problem 7
 (10 points) Object Orientation: The above classes are of the old-fashioned batch processing style: a pre-defined input is fed into a function and output is created. Now, create a class RestaurantBill which tracks incremental changes to a restaurant bill. As items are added incrementally, the class should be capable of reporting the current total, current item, and other aspects of the check. All required details are below. Note that the final total is implemented much differently than in #6; it is a computed property in #6, while here in #7 it is a stored property that keeps up to date by a property observer on other stored properties that affect it.
 Implement the members:
 
 addItem()
 method that takes a String description, integer quantity, and integer price per item (pennies) and stores it in the check. If an item of exactly that description already exists in the check, the item count is instead incremented and the redundant price is ignored. Think about which representation makes it easiest to find if the description passed in already exists. Parallel (two separate) arrays are frowned upon here, so youâ€™ll need a helper struct that tracks the aspects of the item (price & quantity), and to maintain a collection of these structs.
 
 serviceLevel
 stored property of enum type as in #4.
 
 baseTotal
 computed property representing total without tip or tax. Graduate credit: Use reduce() for this.
 
 finalTotal
 A stored property representing total including tip and tax (why do we always represent dollar figures in pennies?). Since it is stored, you must observe changes to other stored properties that affect it and recompute it when they do. This may not feel natural, but it is included to drive home the idea of property observers.
 
 description
 Computed property that produces a line item invoice (in no particular order), with each line showing: item description, quantity, and line item total), as well as a total.
 
 Example: \
 myBill = RestaurantBill()\
 myBill.addItem("Ham", quantity: 1, price: 345)\
 myBill.addItem("Cheese", quantity: 1, price: 115)\
 myBill.addItem("Ham", quantity: 2, price: 0) // price already known, this time it's ignored\
 \
 myBill.description would evaluate to:\
 Ham (3 @$3.45): $10.35\
 Cheese (1 @1.15): $1.15\
 Base Total: $11.50
 
 For the program output, use the description above, as well as clearly labeled values for serviceLevel and finalTotal, to inform the user of the entire bill for each test case. For serviceLevel, show the value in percent and dollar amount. Have at least 6 test cases, where you probe edge conditions, such as an empty bill, or unreasonable values (-3 salads, 0 hamburgers at $4.99 each, a pickle that costs -0.25)
 */
import Foundation
class RestaurantBill{
    private struct orderItems{
        let description: String
        var quantity: Int
        let price: Int
        func total() -> Int{
            return quantity * price
        }
    }
    private var items = [orderItems](){
        didSet{
            let total = baseTotal()
            let tax = Double(total) * 0.07
            let tip = total - ((total) * Int(serviceLevel.rawValue))
            finalTotal = (tip, Int(tax), total + tip + Int(tax))
        }
    }
    public var serviceLevel = ServiceLevel.Good
    
    public var finalTotal:(tipAmount: Int, taxAmount: Int, totalAmount: Int) = (0,0,0)
    public func addItem(_ description: String, quantity: Int, price: Int){
        if let index = items.index(where: {(orderItems) -> Bool in orderItems.description == description}){
            var item = items[index]
            item.quantity += quantity
            items[index] = item
        }else{
            let item = orderItems(description: description, quantity: quantity, price: price)
            items.append(item)
        }
        
    }
    public func baseTotal() -> Int{
        return items.reduce(0, {x,y in x + y.total()})
        }
    public func description(){
        for orderItem in items{
            print("\(orderItem.description)  \(orderItem.quantity)  \(String(format: "$%.02f", Double(orderItem.price)))  \(String(format: "$%.02f", Double(orderItem.total())))")
        }
        print("Base Amount: \(String(format: "$%.02f",(Double(baseTotal())) * 0.01))")
        print("Tip: \(String(format: "$%.02f",Double(finalTotal.tipAmount) * 0.01))")
        print("Tax: \(String(format: "$%.02f",Double(finalTotal.taxAmount) * 0.01))")
        print("Final Total: \(String(format: "$%.02f",Double(finalTotal.totalAmount) * 0.01))")
        
    }
    
    
}
