//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by SK Salman Ahmad Sabbir on 8/14/24.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    var menuManager=MenuManager()
    var cartManager=CartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
                .environmentObject(LikesManager())
        }
    }
}
