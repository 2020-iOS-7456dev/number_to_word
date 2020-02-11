//
//  ViewController.swift
//  NumberToWord
//
//  Created by Raj Kadam on 11/02/20.
//  Copyright © 2020 2020_iOS_7456dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    let numberVM = NumberViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Number To Word"
        numberVM.delegate = self
        inputTextField.delegate = self
    }
    
    @IBAction func convertAction(sender: UIButton) {
        
        numberVM.converter(inputNumber: inputTextField.text)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.inputTextField.resignFirstResponder()
    }
}

extension ViewController: ConverterDelegate {
    
    func failure(error: InputNumberErrors) {
        switch error {
        case .emptyString:
            self.resultLabel.textColor = .red
            self.resultLabel.text = "Number is empty"
        case .negativeInput:
            self.resultLabel.textColor = .red
            self.resultLabel.text = "Number must be grater than zero"
        case .invalidInput:
            self.resultLabel.textColor = .red
            self.resultLabel.text = "Invalid Input"
        case .outOfRangeInput:
            self.resultLabel.textColor = .red
            self.resultLabel.text = "Number greater than 999999 is not supported"
        }
    }

    func success(word: String) {
        self.resultLabel.textColor = .black
        self.resultLabel.text = word
    }
}

extension ViewController:  UITextFieldDelegate {
 
       func textFieldShouldClear(_ textField: UITextField) -> Bool {
        resultLabel.text = ""
           return true
       }
       public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           textField.resignFirstResponder()
           return true
       }
       
}





