//
//  ExchangeIcon.swift
//  DOTAConverter17
//
//  Created by Macbook on 11/01/24.
//

import SwiftUI

struct CurrencyIcon: View {
    let currencyImage: ImageResource
    let currencyName: String
    
    var body: some View {
        ZStack(alignment: .bottom){
            //Currency Image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            //Currency Name
            Text(currencyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.brown.opacity(0.75))
                .saturation(0.3)
        }
        .padding(3)
        .frame(width: 100,height: 100)
        .background(.black.opacity(0.4))
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(currencyImage: .ancientmedal, currencyName: "Ancient Medal")
}
