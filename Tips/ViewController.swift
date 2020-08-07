//
//  ViewController.swift
//  Tips
//
//  Created by Phillip Lagua on 8/5/20.
//  Copyright © 2020 Phillip Lagua. All rights reserved.
//

import UIKit 

class ViewController:
    UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender:
        Any) {
        print("Hello")
        
        view.endEditing(true)
        
    }
    
    @IBAction func calculateTips(_ sender: Any) {
        
        // Get bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

