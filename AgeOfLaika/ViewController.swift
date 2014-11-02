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

        let dogAgeFactor = 7.0
        if !enterNewAgeTextField.text.isEmpty {
            let dateEntryInt = Double((enterNewAgeTextField.text as NSString).doubleValue)
            enterNewAgeTextField.text = ""
            calculateAgeLabel.text = "Dog's age of \(dateEntryInt * dogAgeFactor)"
            calculateAgeLabel.hidden = false
            
        }
        calculateButtonRef.hidden = true
    }
    
    @IBAction func enterNewAgeTextFieldAction(sender: UITextField) {
    if enterNewAgeTextField.text.isEmpty {
        calculateButtonRef.hidden = true
    } else {
        
        calculateButtonRef.hidden = false
        calculateAgeLabel.text = ""
        println("change in entry field")
        }
    }

}

