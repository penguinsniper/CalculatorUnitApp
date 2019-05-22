//
//  ViewController.swift
//  CalculatorUnitApp
//
//  Created by Ryan Lau on 10/25/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var gradeNeeded: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func myButton(_ sender: Any) {
        let gradeC = Double(textField1.text!)!
        let gradeW = Double(textField2.text!)!
        let weight = Double(textField3.text!)!
        let decimalPercent = weight / 100.0
        let percentLeft = 1 - decimalPercent
        let gradeN = (gradeW - (percentLeft * gradeC)) / decimalPercent
        gradeNeeded.text = "\(gradeN)"
    }
    }


