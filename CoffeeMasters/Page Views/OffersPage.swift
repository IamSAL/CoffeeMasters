//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by SK Salman Ahmad Sabbir on 8/15/24.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView {
            List {
                Offer(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
                Offer(title: "Welcome Gift", description: "25% off on your first order.")
                Offer(title: "Welcome Gift", description: "25% off on your first order.")
                Offer(title: "Welcome Gift", description: "25% off on your first order.")
            }.listStyle(.plain)
                .listRowSeparator(.hidden).navigationTitle("offers")
        }
    }
}

#Preview {
    OffersPage()
}
