//
//  LikeButton.swift
//  CoffeeMasters
//
//  Created by SK Salman Ahmad Sabbir on 8/16/24.
//

import SwiftUI

struct LikeButton: View {
    @EnvironmentObject var likesManager: LikesManager
    
    var product: Product
    
    var body: some View {
        Image(systemName: likesManager.isLiked(id: product.id) ? "heart.fill" : "heart")
            .padding()
            .foregroundColor(Color("Secondary"))
            .accessibilityLabel(likesManager.isLiked(id: product.id) ? "Dislike" : "Like")
            .onTapGesture {
                likesManager.toggle(product.id)
            }
    }
}
#Preview {
    LikeButton(product: Product(id: 123, name: "Mochaccinos",description: "Testy zesty cesty caffey", price: 255, image: "")).environmentObject(LikesManager())
}
