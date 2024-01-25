//  ExchangeInfo.swift
//  DOTAConverter17
//
//  Created by Macbook on 10/01/24.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            //Background parchment image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
                .saturation(0.3)
            VStack{
                //Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .bold()
                    .tracking(2)
                
                //Description text
                Text("Here at the Dota 2 Medal Exchange, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Gold, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                //Exchange rates
                ExchangeRate(leftImage: .crusadermedal, text: "1 Crusader Medal = 4 Archon Medal", rightImage: .archonmedal)
                ExchangeRate(leftImage: .archonmedal, text: "1 Archon Medal = 4 Legend Medal", rightImage: .legendmedal)
                ExchangeRate(leftImage: .legendmedal, text: "1 Legend Medal = 4 Ancient Medal", rightImage: .ancientmedal)
                ExchangeRate(leftImage: .ancientmedal, text: "1 Ancient Medal = 100 Divine Medal", rightImage: .divinemedal)
                ExchangeRate(leftImage: .divinemedal, text: "1 Divine Medal = 2 Immortal Medal", rightImage: .immortalmedal)
                // Done button
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .saturation(0.3)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
            }
            .foregroundColor(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}

