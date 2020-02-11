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
}
