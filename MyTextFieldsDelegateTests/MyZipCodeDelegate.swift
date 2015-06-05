//
//  MyZipCodeDelegate.swift
//  MyTextFieldsDelegateTests
//
//  Created by Klaus Villaca on 6/3/15.
//  Copyright (c) 2015 Klaus Villaca. All rights reserved.
//

import Foundation
import UIKit


class MyZipCodeDelegate  : NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        let newLength = count(textField.text.utf16) + count(string.utf16) - range.length
        return newLength <= 5 // Bool
    }
    
    
}
