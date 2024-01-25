//
//  CurrencyTip.swift
//  DOTAConverter17
//
//  Created by Macbook on 18/01/24.
//

import Foundation
import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text? = Text("You can tap left or right currency to bring up the Select Currency screen.")
}
