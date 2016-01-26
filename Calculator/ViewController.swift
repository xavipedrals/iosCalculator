//
//  ViewController.swift
//  Calculator
//
//  Created by mac33 on 26/1/16.
//  Copyright © 2016 mac33. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultatLabel: UILabel!
    
    var displayNumbers:Bool = false;
    
    var operandStack:[Double] = [Double]();
    
    //Variable computada
    var displayValue:Double{
        get{
            let text = resultatLabel.text!
            return Double(text)!
        }
        set{
            resultatLabel.text = String(newValue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func appendDigitToDisplay(sender: UIButton) {
        if let digit = sender.currentTitle {
            if displayNumbers {
                resultatLabel.text = resultatLabel.text! + digit;
            } else {
                resultatLabel.text = "";
                resultatLabel.text = resultatLabel.text! + digit;
                displayNumbers = true;
            }
        }
        
    }
    @IBAction func enter() {
        displayNumbers = false
        operandStack.append(displayValue)
        
    }
    @IBAction func operate(sender: UIButton) {
        let operation = sender.currentTitle!
        if displayNumbers {
            enter()
        }
        switch operation{
            case "x":
                performOperation{ $0 * $1 }
            case "x":
                performOperation{ $0 * $1 }
            case "x":
                performOperation{ $0 * $1 }
            case "x":
                performOperation{ $0 * $1 }
            default:break
        }
    }
    
    func performOperation(operation:(Double, Double) -> Double){
        if operandStack.count >= 2{
            //resultatLabel = operation(operandStack.removeLast(), operandStack.removeLast())
        }
    }
}

