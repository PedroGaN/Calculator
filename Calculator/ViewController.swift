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
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        switch String(sender.accessibilityIdentifier!) {
        /*case "+","-","*","/","%":
            if labelNumber2.text != "" {
                
            }*/
        case "ButtonClear":
            
            labelNumber2.text! = ""
            
        /*case "ButtonMultiply":
        
        case "ButtonDivision":
            
        case "ButtonModule"*/
        default:
            labelNumber2.text = labelNumber2.text! + String(sender.accessibilityIdentifier!)
        }
        
    }
    
    func checkOperand(operand: String){
        
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
 

