//
//  Currency.swift
//  DOTAConverter17
//
//  Created by Macbook on 12/01/24.
//
import SwiftUI

enum Currency: Double, CaseIterable, Identifiable {
    case immortalMedal = 12800
    case divineMedal = 6400
    case ancientMedal = 64
    case legendMedal = 16
    case archonMedal = 4
    case crusaderMedal = 1
    
    var id: Currency { self }
    
    var image: ImageResource {
        switch self {
        case .immortalMedal:
                .immortalmedal
        case .divineMedal:
                .divinemedal
        case .ancientMedal:
                .ancientmedal
        case .legendMedal:
                .legendmedal
        case .archonMedal:
                .archonmedal
        case .crusaderMedal:
                .crusadermedal
        }
    }
    var name: String {
        switch self {
        case .immortalMedal:
            "Immortal Medal"
        case .divineMedal:
            "Divine Medal"
        case .ancientMedal:
            "Ancient Medal"
        case .legendMedal:
            "Legend Medal"
        case .archonMedal:
            "Archon Medal"
        case .crusaderMedal:
            "Crusader Medal"
        }
    }
    func convert(_ amountString: String, to currency: Currency) -> String {
        guard let doubleAmount = Double(amountString) else {
            return ""
        }
        let convertedAmount = (doubleAmount / self.rawValue) * currency.rawValue
        return String(format: "%.2f", convertedAmount)
    }
    
}

