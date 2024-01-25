//
//  IconGrid.swift
//  DOTAConverter17
//
//  Created by Macbook on 14/01/24.
//

import SwiftUI

struct IconGrid: View {
    @Binding var currency: Currency
    
    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()])  {
            ForEach(Currency.allCases){ currency in
                if self.currency == currency {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .shadow(radius: 10)
                        .overlay{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                } else {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .onTapGesture{
                            self.currency = currency
        
                        }
                }
            }
        }
    }
}
#Preview {
    IconGrid(currency: .constant(.legendMedal))
}
