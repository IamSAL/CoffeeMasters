//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by SK Salman Ahmad Sabbir on 8/15/24.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager
    @State var search: String = ""
    var body: some View {
        NavigationView{
            List{
                
                // Replace the ForEach
                ForEach(menuManager.menu) { category in
                    if category.filteredItems(text: search).count > 0 {
                        Text(category.name)
                        .listRowBackground(Color("Background"))
                        .foregroundColor(Color("Secondary"))
                        .padding()
                    }
                    
                    ForEach(category.filteredItems(text: search)) { item in
                        ZStack {
                            NavigationLink(destination: Details(product: item)) {
                                EmptyView()
                            }.opacity(0)
                            ProductItem(product: item)
                                .padding(.top)
                                .padding(.leading)
                                .padding(.bottom, 12)

                        }
                        
                    }
                }
            }.navigationTitle("Products").searchable(text: $search)
            
        }
    }
}

#Preview {
    MenuPage().environmentObject(MenuManager()).environmentObject(LikesManager())
}
