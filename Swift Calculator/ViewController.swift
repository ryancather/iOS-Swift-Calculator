//
//  ViewController.swift
//  Swift Calculator
//
//  Created by Ryan Cather on 26/01/2015.
//  Copyright (c) 2015 Lake Tuggeranong College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstValue = true
    var subTotal: Int?
    
    enum operatorType {
        case plus
        case subtract
        case multiply
        case divide
    }
    
    var lastOperator: operatorType?
    
    @IBOutlet weak var calcDisplay: UITextField!

    @IBAction func pressEquals(sender: AnyObject) {
        var result: Int?
        if let finalOperator = lastOperator {
            switch(finalOperator) {
            case .plus : result = subTotal! + calcDisplay.text.toInt()!
            case .subtract : result = subTotal! - calcDisplay.text.toInt()!
            case .multiply : result = subTotal! * calcDisplay.text.toInt()!
            case .divide : result = subTotal! / calcDisplay.text.toInt()!
            }
        }
        calcDisplay.text = "\(result!)"
        subTotal = nil
        firstValue = true
    }
    
    @IBAction func pressMultiply(sender: AnyObject) {
        if let currentSubTotal = subTotal {
            subTotal = calcDisplay.text.toInt()! * currentSubTotal
        } else {
            subTotal = calcDisplay.text.toInt()!
        }
        lastOperator = operatorType.multiply
        firstValue = true
        calcDisplay.text = "\(subTotal!)"
    }
    
    @IBAction func pressDivide(sender: AnyObject) {
        if let currentSubTotal = subTotal {
            subTotal = calcDisplay.text.toInt()! / currentSubTotal
        } else {
            subTotal = calcDisplay.text.toInt()!
        }
        lastOperator = operatorType.divide
        firstValue = true
        calcDisplay.text = "\(subTotal!)"
    }
    
    @IBAction func pressMinus(sender: AnyObject) {
        if let currentSubTotal = subTotal {
            subTotal = calcDisplay.text.toInt()! - currentSubTotal
        } else {
            subTotal = calcDisplay.text.toInt()!
        }
        lastOperator = operatorType.subtract
        firstValue = true
        calcDisplay.text = "\(subTotal!)"
    }
    
    
    @IBAction func pressPlus(sender: AnyObject) {
        if let currentSubTotal = subTotal {
            subTotal = calcDisplay.text.toInt()! + currentSubTotal
        } else {
            subTotal = calcDisplay.text.toInt()!
        }
        lastOperator = operatorType.plus
        firstValue = true
        calcDisplay.text = "\(subTotal!)"
    }
    
    @IBAction func pressZero(sender: AnyObject) {
        if firstValue {
            calcDisplay.text = "0"
        } else {
            calcDisplay.text = calcDisplay.text + "0"
        }
    }
    @IBAction func pressNine(sender: AnyObject) {
        if firstValue {
            calcDisplay.text = "9"
            firstValue = false
        } else {
            calcDisplay.text = calcDisplay.text + "9"
        }
    }
    @IBAction func pressEight(sender: AnyObject) {
        if firstValue {
            calcDisplay.text = "8"
            firstValue = false
        } else {
            calcDisplay.text = calcDisplay.text + "8"
        }
    }
    @IBAction func pressSeven(sender: AnyObject) {
        if firstValue {
            calcDisplay.text = "7"
            firstValue = false
        } else {
            calcDisplay.text = calcDisplay.text + "7"
        }
    }
    @IBAction func pressSix(sender: AnyObject) {
        if firstValue {
            calcDisplay.text = "6"
            firstValue = false
        } else {
            calcDisplay.text = calcDisplay.text + "6"
        }
    }
    @IBAction func pressFive(sender: AnyObject) {
        if firstValue {
            calcDisplay.text = "5"
            firstValue = false
        } else {
            calcDisplay.text = calcDisplay.text + "5"
        }
    }
    @IBAction func pressFour(sender: AnyObject) {
        if firstValue {
            calcDisplay.text = "4"
            firstValue = false
        } else {
            calcDisplay.text = calcDisplay.text + "4"
        }
    }
    @IBAction func pressThree(sender: AnyObject) {
        if firstValue {
            calcDisplay.text = "3"
            firstValue = false
        } else {
            calcDisplay.text = calcDisplay.text + "3"
        }
    }
    @IBAction func pressTwo(sender: AnyObject) {
        if firstValue {
            calcDisplay.text = "2"
            firstValue = false
        } else {
            calcDisplay.text = calcDisplay.text + "2"
        }
    }
    @IBAction func pressOne(sender: AnyObject) {
        if firstValue {
            calcDisplay.text = "1"
            firstValue = false
        } else {
            calcDisplay.text = calcDisplay.text + "1"
        }
    }
    
    @IBAction func clearCalculations(sender: AnyObject) {
        calcDisplay.text = "0"
        firstValue = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calcDisplay.text = "0"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

