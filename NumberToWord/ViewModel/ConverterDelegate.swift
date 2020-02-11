//
//  ConverterDelegate.swift
//  NumberToWord
//
//  Created by Raj Kadam on 11/02/20.
//  Copyright © 2020 2020_iOS_7456dev. All rights reserved.
//

import Foundation

enum InputNumberErrors: Error {
    case emptyString
    case invalidInputException(message: String)
}


protocol ConverterDelegate {
    
    func success(word: String)
    func failure(error: InputNumberErrors)
}

