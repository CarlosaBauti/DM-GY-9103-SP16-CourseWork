//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Carlos Bautista on 2/26/16.
//  Copyright © 2016 cbautista. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var celsiusLabel : UILabel!
    var fahrenheitValue: Double? {
        didSet {
            updateCelsiusLabel()
        }
    }
    var celsiusValue: Double? {
        if let value = fahrenheitValue {
            return (value - 32) * (5/9)
        }
        else {
            return nil
        }
    }
    @IBOutlet var textField: UITextField!
    @IBAction func farenheitFieldEditingChanged(textField: UITextField){
        if let text = textField.text, value = Double (text) {
            fahrenheitValue = value
        }
    }
    @IBAction func dismisskeyboard (sender: AnyObject) {
        textField.resignFirstResponder()
    }
    func updateCelsiusLabel() {
        if let value = celsiusValue {
            celsiusLabel.text = numberFormater.stringFromNumber(value)
        }
        else {
            celsiusLabel.text = "???"
        }
    }
    let numberFormater: NSNumberFormatter = {
        let nf = NSNumberFormatter()
        nf.numberStyle = .DecimalStyle
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let existingTextHasDecimalSeparator = textField.text? .rangeOfString(".")
        let replacementTextHasDecimalSeparator = string.rangeOfString (".")
        let numberCharacters = NSCharacterSet.letterCharacterSet()
        if string.lowercaseString.rangeOfCharacterFromSet(numberCharacters) != nil {
            return false
        }
        else if existingTextHasDecimalSeparator != nil && replacementTextHasDecimalSeparator != nil {
            return false
        }
        else {
            return true
        }
    }
    
}
