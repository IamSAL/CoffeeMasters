//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by SK Salman Ahmad Sabbir on 8/14/24.
//

import SwiftUI

struct ContentView: View {
  
    @EnvironmentObject var cartManager:CartManager
    
    var body: some View {
        TabView{
            MenuPage().tabItem {
                Image(systemName: "cup.and.saucer")
                Text("Menu")
            }
            OffersPage().tabItem {
                Image(systemName: "tag")
                Text("Offers")
            }
            CartPage().tabItem {
                Image(systemName: "cart")
                Text("Orders")
            }.badge(cartManager.count)
            InfoPage().tabItem {
                Image(systemName: "info")
                Text("Info")
            }
        }
    }
}


#Preview {
    ContentView()
        .environmentObject(MenuManager())
        .environmentObject(CartManager())
        .environmentObject(LikesManager())
}
