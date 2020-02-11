//
//  NumberViewModel.swift
//  NumberToWord
//
//  Created by Raj Kadam on 11/02/20.
//  Copyright © 2020 2020_iOS_7456dev. All rights reserved.
//

import Foundation

class NumberViewModel: NSObject {
    
    
    func convertNumberToWord(inputNumber: Int) -> String
    {
        
        if inputNumber == 1 {
        return "One"
        }
        if inputNumber == 2 {
        return "Two"
        }
        if inputNumber == 3 {
        return "Three"
        }
        if inputNumber == 4 {
        return "Four"
        }
        
        return "Invalid number"
    }
}
