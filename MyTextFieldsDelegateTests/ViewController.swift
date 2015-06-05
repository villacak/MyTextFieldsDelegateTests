//
//  ViewController.swift
//  MyTextFieldsDelegateTests
//
//  Created by Klaus Villaca on 6/3/15.
//  Copyright (c) 2015 Klaus Villaca. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var zipcode: UITextField!
    @IBOutlet weak var currencyValue: UITextField!
    @IBOutlet weak var lockable: UITextField!
    
    var zipDelegate = MyZipCodeDelegate()
    var currencyDelegate = MyCurrencyFormatrerDelegate()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.zipcode.delegate = zipDelegate
        self.currencyValue.delegate = currencyDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func lockAction(sender: UISwitch) {
        if sender.on {
            lockable.userInteractionEnabled = true;
        } else {
            lockable.userInteractionEnabled = false;
        }
    }


}

