//
//  ViewController.swift
//  CodePathPrework
//
//  Created by Vũ Lê Duy on 1/14/21.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        billAmountTextField.keyboardType = UIKeyboardType.decimalPad
    }
    
    @IBAction func calculateTip(_ sender: Any)
    {
        //value of bill amount field
        let billAmount = Double(billAmountTextField.text!) ?? 0
        //options for different tip ratio
        let tipOptions = [0.15, 0.18, 0.2]
        
        //calculate tip and total
        let tip = billAmount * tipOptions[tipControl.selectedSegmentIndex]
        let total = billAmount + tip
        
        //update tip and total amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

