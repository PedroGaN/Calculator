//
//  ViewController.swift
//  Calculator
//
//  Created by user177273 on 9/27/20.
//  Copyright © 2020 PedroGaN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CalculatorProtocol {
    
    func buttonPressed(key: String) {
        switch key {
        case "Button0","Button1":
            print(key)
            
        default:
            <#code#>
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
    func buttonPressed(key: String)
}
 

