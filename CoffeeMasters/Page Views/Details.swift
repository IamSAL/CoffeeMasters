//
//  Details.swift
//  CoffeeMasters
//
//  Created by SK Salman Ahmad Sabbir on 8/15/24.
//

import SwiftUI

struct Details: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var cartManager: CartManager;
    @State var quantity=1
    var product:Product

    var body: some View {
        ScrollView {
            AsyncImage(url:product.imageURL)
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32).clipped()
            Text(product.name)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            
            Text(product.description ?? "")
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            HStack {
                Text("$ \(product.price,specifier: "%.2f") ea")
                Stepper(value: $quantity, in: 1...10) { }
            }
                .frame(maxWidth: .infinity)
                .padding(30)
                            
            Text("Subtotal $\(Double(quantity)*product.price,specifier: "%.2f")")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Cart") {
                cartManager.add(product: product, quantity:quantity)
                dismiss()
            }
                .padding()
                .frame(width: 250.0)
                .background(Color("Alternative2"))
                .foregroundColor(Color.black)
                .cornerRadius(25)

        }.navigationTitle(product.name).toolbar{
            LikeButton(product: product)
        }
        
    }
}

#Preview {
    Details(product:Product(id: 123, name: "Mochaccinos",description: "Testy zesty cesty caffey", price: 255, image: "")).environmentObject(CartManager())
}
