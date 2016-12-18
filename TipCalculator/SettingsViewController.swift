//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Akbar Mirza on 12/18/16.
//  Copyright © 2016 Akbar Mirza. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Settings"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        let defaults = UserDefaults.standard
        
        tipControl.selectedSegmentIndex = defaults.integer(forKey: "defaultTip")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
//        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
//        print("view did disappear")
    }
    
    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setDefaultTip(_ sender: Any) {

        let defaultTip = tipControl.selectedSegmentIndex
        
        // Access UserDefaults
        let defaults = UserDefaults.standard
        
        // Set a Double value for some key
        defaults.set(defaultTip, forKey: "defaultTip")
        
        // Force UserDefaults to save.
        defaults.synchronize()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
