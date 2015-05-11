//
//  ViewController.swift
//  TipCalc
//
//  Created by James Morris on 5/10/15.
//  Copyright (c) 2015 Casey Morris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Instance Member Variables
    @IBOutlet weak var CostInput: UITextField!
    @IBOutlet weak var PercentSlider: UISlider!
    @IBOutlet weak var TipAmount: UILabel!
    @IBOutlet weak var TotalAmount: UILabel!
    
    @IBOutlet weak var PercentLabel: UILabel!
    
    @IBAction func CalcTip(sender: AnyObject) {
        var newCost = (CostInput.text as NSString).doubleValue
        var currentPercent = Double(PercentSlider.value)
        
        // Change the percent label based on the slider
        PercentLabel.text = "Percent(\(Int(currentPercent))%)"
        //Calculate tip
        var tipAmount = newCost*(currentPercent/100)
        
        //Display Tip and Total based on cost
        TipAmount.text = String(format: "%.02f", tipAmount)
        TotalAmount.text = String(format: "%.02f",(newCost+tipAmount))
        println("Tip Amount: \(tipAmount)")
        println("Current Percen: \(currentPercent)")
        
    }
    
   
}

