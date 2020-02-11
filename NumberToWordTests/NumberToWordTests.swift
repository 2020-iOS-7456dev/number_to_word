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
   
    

}
