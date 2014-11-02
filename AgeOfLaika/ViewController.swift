//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Martin Brunner on 02.11.14.
//  Copyright (c) 2014 Martin Brunner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var enterNewAgeTextField: UITextField!
    
    @IBOutlet weak var calculateAgeLabel: UILabel!
    @IBOutlet weak var calculateButtonRef: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        calculateAgeLabel.hidden = true
        calculateButtonRef.hidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateAgeButton(sender: UIButton) {

        let dogAgeFactor1 = 10.5
        let dogAgeFactor2 = 4.0
        if !enterNewAgeTextField.text.isEmpty {
            let dateEntryDouble = Double((enterNewAgeTextField.text as NSString).doubleValue)
            var realDogYears = 0.0
            if dateEntryDouble > 2.0 {
                realDogYears =  (dogAgeFactor1 * 2) + (dateEntryDouble-2) * dogAgeFactor2
 
            } else {
                realDogYears = dateEntryDouble * dogAgeFactor1
 
            }
            enterNewAgeTextField.text = ""
            calculateAgeLabel.text = "Dog's age of \(realDogYears)"
            calculateAgeLabel.hidden = false
            enterNewAgeTextField.resignFirstResponder()
            
        }
        calculateButtonRef.hidden = true
    }
    
    @IBAction func enterNewAgeTextFieldAction(sender: UITextField) {
    if enterNewAgeTextField.text.isEmpty {
        calculateButtonRef.hidden = true
    } else {
        
        calculateButtonRef.hidden = false
        calculateAgeLabel.text = ""
 
        }
    }

}

