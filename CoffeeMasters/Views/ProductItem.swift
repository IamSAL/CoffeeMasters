//
//  ProductItem.swift
//  CoffeeMasters
//
//  Created by SK Salman Ahmad Sabbir on 8/15/24.
//

import SwiftUI

struct ProductItem: View {
    var product:Product
    var body: some View {
        VStack{
            VStack{
                AsyncImage(url: product.imageURL)
                    .frame(width: 300, height: 150)
                    .background(Color("AccentColor"))
                HStack {
                    VStack(alignment: .leading) {
                        Text(product.name)
                            .font(.title3)
                            .bold()
                        Text("$ \(product.price, specifier: "%.2f")")
                            .font(.caption)

                    }.padding(8)
                    Spacer()
                    LikeButton(product: product)
                }
            }
            .background(Color("SurfaceBackground"))
            .cornerRadius(10)
            .padding(.trailing)
            
        }
       }
}

#Preview {
    ProductItem(product:Product(id: 123, name: "Mochaccino",description: "Testy zesty cesty caffey", price: 255, image: "")).environmentObject(LikesManager())
}
