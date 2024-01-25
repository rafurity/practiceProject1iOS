//
//  SelectCurrency.swift
//  DOTAConverter17
//
//  Created by Macbook on 11/01/24.
//
import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
    var body: some View {
        ZStack{
            // Parchment background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
                .saturation(0.3)
            VStack{
                //Text
                Text("Select the currency you are starting with:")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                //Currency icons
                IconGrid(currency: $topCurrency)
                //Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                //Currency icons
                IconGrid(currency: $bottomCurrency)
                //Done button
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
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency(topCurrency: .constant(.legendMedal), bottomCurrency: .constant(.legendMedal))
}

