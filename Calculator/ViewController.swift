//
//  ViewController.swift
//  Calculator
//
//  Created by user177273 on 9/27/20.
//  Copyright © 2020 PedroGaN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CalculatorProtocol {
    
    @IBOutlet weak var labelNumberOne: UILabel!
    
    @IBOutlet weak var labelNumber2: UILabel!
    
    @IBOutlet weak var labelStoredOperand: UILabel!
    
    var storedOperand = ""

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        switch String(sender.accessibilityIdentifier!) {
        case "+","-","*","/","%":
            if labelNumberOne.text! == ""{
                break
            }
            if storedOperand == "" {
                if labelNumberOne.text! == "" {
                     labelNumberOne.text! = labelNumber2.text!
                }
                labelNumber2.text! = ""
                storedOperand = String(sender.accessibilityIdentifier!)
                labelStoredOperand.text! = storedOperand
            } else if labelNumber2.text! != ""{
                math(operand: storedOperand)
                labelNumber2.text! = ""
                storedOperand = String(sender.accessibilityIdentifier!)
                labelStoredOperand.text! = storedOperand
            } else {
                storedOperand = String(sender.accessibilityIdentifier!)
                labelStoredOperand.text! = storedOperand
            }

            
        case "ButtonClear":
            
            labelNumber2.text! = ""
            
        case "ButtonClearEverything":
            
            labelNumber2.text! = ""
            labelNumberOne.text! = ""
            storedOperand = ""
            labelStoredOperand.text! = storedOperand
            
        case "ButtonEquals":
            
            if storedOperand == "" {
                labelNumberOne.text! = labelNumber2.text!
                labelNumber2.text! = ""
            } else if labelNumber2.text! != "" {
                math(operand: storedOperand)
                labelNumber2.text! = ""
                storedOperand = ""
                labelStoredOperand.text! = storedOperand
            }

        default:
            labelNumber2.text = labelNumber2.text! + String(sender.accessibilityIdentifier!)
        }
        
    }
    
    func math(operand: String){
        
        switch operand {
        case "+":
            labelNumberOne.text! = String(Int(labelNumberOne.text!)! + Int(labelNumber2.text!)!)
            break
        case "-":
            labelNumberOne.text! = String(Int(labelNumberOne.text!)! - Int(labelNumber2.text!)!)
            break
        case "*":
            labelNumberOne.text! = String(Int(labelNumberOne.text!)! * Int(labelNumber2.text!)!)
            break
        case "/":
            if labelNumber2.text! == "0"{
                labelNumber2.text! = ""
                labelNumberOne.text! = ""
                storedOperand = ""
            } else {
                labelNumberOne.text! = String(Int(labelNumberOne.text!)! / Int(labelNumber2.text!)!)
            }

            break
        case "%":
            labelNumberOne.text! = String(Int(labelNumberOne.text!)! % Int(labelNumber2.text!)!)
            break
        default:
            break
        }
    }
    
    
    func add(num1: Float, num2: Float) -> Float {
        
        let result = num1 + num2
        
        return result;
    }
    
    func subtraction(num1: Float, num2: Float) -> Float {
        let result = num1 - num2
        
        return result;
    }
    
    func multiply(num1: Float, num2: Float) -> Float {
        let result = num1 * num2
        
        return result;
    }
    
    func division(num1: Float, num2: Float) -> Float {
        let result = num1 / num2
        
        return result;
    }
    
    func module(num1: Int, num2: Int) -> Int {
        let result = num1 % num2
        
        return result;
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

protocol CalculatorProtocol {
    
    func add(num1: Float, num2: Float) -> Float
    func subtraction(num1: Float, num2: Float) -> Float
    func multiply(num1: Float, num2: Float) -> Float
    func division(num1: Float, num2: Float) -> Float
    func module(num1: Int, num2: Int) -> Int

}
 

