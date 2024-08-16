//
//  Product.swift
//  CoffeeMasters
//
//  Created by SK Salman Ahmad Sabbir on 8/15/24.
//

import Foundation

struct Product:Decodable, Identifiable {
    var id: Int
    var name: String
    var description: String?
    var price: Double
    var image: String = ""
    
    var imageURL: URL {
        if(self.image.contains("http")){
            return URL(string:self.image)!;
        }else{
            return URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
        }
       
    }
}
