//
//  NumberToWordTests.swift
//  NumberToWordTests
//
//  Created by Raj Kadam on 11/02/20.
//  Copyright © 2020 2020_iOS_7456dev. All rights reserved.
//

import XCTest
@testable import NumberToWord

let numberVM = NumberViewModel()
class NumberToWordTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testConversionForOne(){
        let result = numberVM.convertNumberToWord(inputNumber: 1)
        XCTAssertEqual(result, "One", "Conversion for 1 is incorrect")
    }
   
    func testConversionForTwo(){
        let result = numberVM.convertNumberToWord(inputNumber: 2)
        XCTAssertEqual(result, "Two", "Conversion for 2 is incorrect")
    }
    
     func testConversionForThree(){
         let result = numberVM.convertNumberToWord(inputNumber: 3)
         XCTAssertEqual(result, "Three", "Conversion for 3 is incorrect")
     }
    
     func testConversionForFour(){
         let result = numberVM.convertNumberToWord(inputNumber: 4)
         XCTAssertEqual(result, "Four", "Conversion for 4 is incorrect")
     }
    
    func testConversionForNine(){
        let result = numberVM.convertNumberToWord(inputNumber: 9)
        XCTAssertEqual(result, "Nine", "Conversion for 9 is incorrect")
    }
    
    func testConversionFor1234(){
        let result = numberVM.convertNumberToWord(inputNumber: 1234)
        XCTAssertEqual(result, "One Thousand Two Hundred Thirty Four", "Conversion for 1234 is incorrect")
    }
    
    func testConversionFor9999(){
        let result = numberVM.convertNumberToWord(inputNumber: 9999)
        XCTAssertEqual(result, "Nine Thousand Nine Hundred Ninety Nine", "Conversion for 9999 is incorrect")
    }
    
    func testConversionFor999999(){
        let result = numberVM.convertNumberToWord(inputNumber: 999999)
        XCTAssertEqual(result, "Nine Lakh Ninety Nine Thousand Nine Hundred Ninety Nine", "Conversion for 999999 is incorrect")
    }
    
    //MARK: Test cases for Input Number Validation
    
    func testEmptyInputNumberValidity(){
           let result = numberVM.checkValidityOfInputNumbers(inputNumber: " ")
           XCTAssertEqual(result, "Number is empty", "Conversion for empty string is incorrect")
    }
    
    func testNegativeNumberValidity(){
              let result = numberVM.checkValidityOfInputNumbers(inputNumber: "-1")
              XCTAssertEqual(result, "Number must be grater than zero", "Conversion for -1 is incorrect")
    }
    
    func testMaximumInputNumberValidity(){
              let result = numberVM.checkValidityOfInputNumbers(inputNumber: "9999999")
              XCTAssertEqual(result, "Number greater than 999999 is not supported", "Conversion for 9999999 is incorrect")
    }
    
    func testAlphaNumericInputNumberValidity(){
           let result = numberVM.checkValidityOfInputNumbers(inputNumber: "RK088")
           XCTAssertEqual(result, "Invalid Input", "Conversion for alpha-numeric string is incorrect")
    }
    
    func testFloatInputNumberValidity(){
           let result = numberVM.checkValidityOfInputNumbers(inputNumber: "21.88")
           XCTAssertEqual(result, "Invalid Input", "Conversion for 21.88 is incorrect")
    }
}
