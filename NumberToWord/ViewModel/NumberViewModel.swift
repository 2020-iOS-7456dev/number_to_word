//
//  NumberViewModel.swift
//  NumberToWord
//
//  Created by Raj Kadam on 11/02/20.
//  Copyright © 2020 2020_iOS_7456dev. All rights reserved.
//

import Foundation

class NumberViewModel: NSObject {
    
     private let digits = [ "Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen" ]
          
    private let tenMultiple = ["", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
    
    func convertNumberToWord(inputNumber: Int) -> String
    {
        
        if (inputNumber < 20) {
            return digits[inputNumber]
        }
        else if (inputNumber < 100) {
            var result = tenMultiple[inputNumber/10]
            if (inputNumber%10 != 0) {
                result = result+" "
            }
            result = result+digits[inputNumber%10]
            return result
        }
        else if (inputNumber < 1000) {
            var result = digits[inputNumber/100]
            result = result+" Hundred"
            if (inputNumber%100 != 0) {
                result = result+" "
            }
            result = result+convertNumberToWord(inputNumber: inputNumber % 100)
            return result
            
        }
        else if (inputNumber < 100000) {
            var result = convertNumberToWord(inputNumber: inputNumber / 1000)
            result = result+" Thousand"
            if (inputNumber%1000 != 0) {
                result = result+" "
            }
            result = result+convertNumberToWord(inputNumber: inputNumber % 1000)
            return result
            
        }else {
            var result = convertNumberToWord(inputNumber: inputNumber / 100000)
            result = result+" Lakh"
            if (inputNumber % 100000 != 0){
                result = result+" "
            }
            result = result+convertNumberToWord(inputNumber: inputNumber % 100000)
            return result
        }
    }
    
    
    func checkValidityOfInputNumbers(inputNumber: String?) -> String{
        
        // Checking if number string is null or not
        guard var number = inputNumber else {
            return "Invalid Input"
            
            
        }
        // Remove Whitespaces and check if number is empty
        number = number.trimmingCharacters(in: .whitespacesAndNewlines)
        if number.count == 0 {
            return "Number is empty"
            
        }
        
        // Convert input string number to Integer
        guard let intNumber = Int(number) else {
            return "Invalid Input"
            
        }
        
        // Chgeck if number is greater than 0
        if (intNumber < 0) {
            return "Number must be grater than zero"
            
        }
        // Checking if number is less than 999999
        if intNumber > 999999 {
            return "Number greater than 999999 is not supported"
            
        }
        return "Number is valid"
        
    }
}
