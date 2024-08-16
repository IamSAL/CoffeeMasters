//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by SK Salman Ahmad Sabbir on 8/15/24.
//

import SwiftUI

struct OrderItem: View {
    @EnvironmentObject var cartManager:CartManager;
    var item: (Product, Int)
    var body: some View {
        HStack{
            Text("\(item.1)x")
            Text(item.0.name)
            Spacer()
            Text("$\(Double(item.1)*item.0.price, specifier: "%.2f")")
            Image(systemName: "trash").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(Color("Secondary")).padding()
                .onTapGesture {
                    cartManager.remove(product: item.0)
                }
        }.padding()
    }
}

#Preview {
    OrderItem(item:(Product(id: 123, name: "Mochaccinos",description: "Testy zesty cesty caffey", price: 255, image: ""),1)).environmentObject(CartManager())
}
