//
//  MyCurrencyFormatrerDelegate.swift
//  MyTextFieldsDelegateTests
//
//  Created by Klaus Villaca on 6/4/15.
//  Copyright (c) 2015 Klaus Villaca. All rights reserved.
//

import Foundation
import UIKit

class MyCurrencyFormatrerDelegate : NSObject, UITextFieldDelegate {
    
    var currentStr:String = ""
    
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if (range.length == 1 && count(string) == 0) {
            if (count(currentStr) > 0) {
                currentStr = dropLast(currentStr)
            }
        } else {
            currentStr += string
        }
        textField.text = formatTextToCurrency(valueToFormat: currentStr)
        
        return false
    }
    
    
    
    func formatTextToCurrency(#valueToFormat : String) -> String {
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        formatter.locale = NSLocale(localeIdentifier: "en_US")
        var numberFromField = (NSString(string: currentStr).doubleValue)/100
        var formatedText = formatter.stringFromNumber(numberFromField)
        return formatedText!
    }

}
