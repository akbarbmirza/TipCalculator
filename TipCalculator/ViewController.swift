//
//  ViewController.swift
//  TipCalculator
//
//  Created by Akbar Mirza on 12/18/16.
//  Copyright © 2016 Akbar Mirza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipPerPersonLabel: UILabel!
    
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    
    @IBOutlet weak var partySizeLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var partyStepper: UIStepper!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Tip Calculator"
        
        // Opens Keyboard Right Away on App Load
        billField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        let defaults = UserDefaults.standard
        
        // load party size
        partySizeLabel!.text = String(Int(partyStepper.value))
        
        tipControl.selectedSegmentIndex = defaults.integer(forKey: "defaultTip")
        
        // calculate the new current tip
        calculateTip(self)
        
        // Opens Keyboard Right Away on View Load
        billField.becomeFirstResponder()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    
    @IBAction func onPartyStepEvent(_ sender: Any) {
        
        partySizeLabel.text! = String(Int(partyStepper.value))
        
        calculateTip(self)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.20, 0.25]
        
        
        let bill = Double(billField.text!) ?? 0
        let numPeople = partyStepper.value
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let tipPerPerson = tip / numPeople
        
        let total = bill + tip
        let totalPerPerson = total / numPeople
        
        tipLabel.text = String(format: "$%.2f", tip)
        tipPerPersonLabel.text = String(format: "$%.2f", tipPerPerson)
        totalLabel.text = String(format: "$%.2f", total)
        totalPerPersonLabel.text = String(format: "$%.2f", totalPerPerson)
        
    }
}

