//
//  Category.swift
//  CoffeeMasters
//
//  Created by SK Salman Ahmad Sabbir on 8/15/24.
//

import Foundation

struct Category:Decodable, Identifiable {
    var name: String
    var products: [Product]
    var id: String {
        return self.name
    }
    
    func filteredItems(text: String) -> [Product] {
            if text.count > 0 {
                return products.filter({ item in
                    item.name.contains(text)
                })
            } else {
                return products
            }
        }
}
