//
//  NumberViewModel.swift
//  NumberToWord
//
//  Created by Raj Kadam on 11/02/20.
//  Copyright © 2020 2020_iOS_7456dev. All rights reserved.
//

import Foundation

class NumberViewModel: NSObject {
    
    private let digits = ["Zero", "One", "Two", "Three", "Four", "Five",  "Six", "Seven", "Eight", "Nine"]

    func convertNumberToWord(inputNumber: Int) -> String
    {
        
        return digits[inputNumber]
    }
}
