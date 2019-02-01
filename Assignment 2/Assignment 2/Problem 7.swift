//
//  Problem 7.swift
//  Assignment 2
//
//  Created by penlope mazivanhanga on 1/31/19.
//  Copyright © 2019 tanaka. All rights reserved.
//

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
