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
    
    let twoDigits = ["", "Ten", "Eleven", "Twelve",
                     "Thirteen", "Fourteen",
                     "Fifteen", "Sixteen", "Seventeen",
                     "Eighteen", "Nineteen"]
    
    let tenMultiple = ["", "", "Twenty", "Thirty", "Forty",
                       "Fifty","Sixty", "Seventy",
                       "Eighty", "Ninety"]
    
    let tenPower = ["Hundred", "Thousand"]
    
    func convertNumberToWord(inputNumber: Int) -> String
    {
        let number = "\(inputNumber)"
        
        if (inputNumber < 0) {
            return "Number must be grater than zero"
        }
        // Converting number string to array of integer
        let digitsArray = number.compactMap{ $0.wholeNumberValue }
        
        var numberCount = digitsArray.count
        if numberCount == 1 {
            return digits[inputNumber]
        }
        
        var x = 0
        var result = ""
        while x < digitsArray.count {
            
            if numberCount >= 3 {
                if numberCount <= 4 {
                    if digitsArray[x] != 0 {
                        result = result+digits[digitsArray[x]] + " "
                        result = result+tenPower[numberCount-3]+" "
                    }
                    numberCount -= 1
                }else {
                    // Number is greater than 4 digit
                    return "Under Process"
                }
            }else{
                /* Need to handle 10-19. Sum of the two digits
                 is used as index of "two_digits" array of strings */
                
                if (digitsArray[x] == 1)
                {
                    let sum = digitsArray[x] +
                        digitsArray[x+1]
                    result = result+twoDigits[sum] + " "
                    return result
                }
                /* Need to explicitely handle 20 */
                else if (digitsArray[x] == 2 &&
                    digitsArray[x+1] == 0)
                {
                    result = result+"Twenty"
                    return result
                }
                    /* Rest of the two digit
                     numbers i.e., 21 to 99 */
                else
                {
                    let i = (digitsArray[x])
                    if(i > 0){
                        result = result+tenMultiple[i]+" "
                    }else{
                        result = result+" "
                    }
                    x += 1
                    
                    if (digitsArray[x] != 0){
                        result = result+digits[digitsArray[x]];
                    }
                }
            }
            x += 1
        }
        return result
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
        if intNumber > 999999 {
            return "Number greater than 999999 is not supported"
            
        }
        return "Number is valid"
        
    }
}
