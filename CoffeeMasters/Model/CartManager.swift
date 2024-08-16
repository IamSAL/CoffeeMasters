//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by SK Salman Ahmad Sabbir on 8/15/24.
//

import Foundation

class CartManager:ObservableObject{
    @Published var cart:[(Product, Int)] = []
    @Published var count:Int = 0
        func add(product: Product, quantity: Int) {
          cart.append((product, quantity))
            
            calculateCount()
       }
           
       func remove(product: Product) {
           cart.removeAll { productInCart in
               productInCart.0.id == product.id
           }
           calculateCount()
           
       }
       
       func clear() {
           cart.removeAll()
           calculateCount()
       }
       
       func total() -> Double {
           var total = 0.0
           for item in cart {
               total += item.0.price * Double(item.1)
           }
           return total
       }
    
    func calculateCount(){
        var totalCount = 0
        for item in cart {
            totalCount = item.1+totalCount;
        }
    
        count=totalCount;
    }
    
}
