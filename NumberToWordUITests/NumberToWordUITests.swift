//
//  NumberToWordUITests.swift
//  NumberToWordUITests
//
//  Created by Raj Kadam on 11/02/20.
//  Copyright © 2020 2020_iOS_7456dev. All rights reserved.
//

import XCTest

class NumberToWordUITests: XCTestCase {

    var app: XCUIApplication!
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        app = XCUIApplication()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testRandomNumberConversion() {
          // UI tests must launch the application that they test.
          app.launch()
          let randomInt = Int.random(in: 1..<999999)
          let inputTextField = XCUIApplication().textFields.element(matching: .textField, identifier: "InputText")
          inputTextField.tap()
          inputTextField.typeText("\(randomInt)")
          let convertBtn = XCUIApplication().buttons["Convert"]
          convertBtn.tap()
          app.terminate()
      }

}
