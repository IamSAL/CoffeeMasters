//
//  SwiftUIView.swift
//  CoffeeMasters
//
//  Created by SK Salman Ahmad Sabbir on 8/15/24.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    
    var body: some View {
        ZStack{
            Image("BackgroundPattern").frame(maxWidth:.infinity, maxHeight: 200).clipped()
            VStack {
                
                Text(title).padding().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .background(Color("CardBackground"))
                Text(description).padding() .background(Color("CardBackground"))
            }
        }
       
    }
}

struct OfferPreviews: PreviewProvider {
    static var previews: some View {
        Offer(title: "Chaar", description: "Bishal offers").previewLayout(.fixed(width: 350, height: 200))
        Offer(title: "Chaar", description: "Bishal offers").previewLayout(.fixed(width: 350, height: 200))
    }
}

