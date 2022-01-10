//
//  ViewController.swift
//  Calculator
//
//  Created by Trevor Walker on 1/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var solutionLabel: UILabel!
    
    var lastNum: Double = 0
    var currentNum: Double = 0
    var currentOperator = ""


    @IBAction func numberPressed(_ sender: UIButton) {
        currentNum *= 10
        currentNum += Double(sender.tag)
        solutionLabel.text = "\(currentNum)"
    }
    
    @IBAction func operatorPressed(_ sender: UIButton) {
        switch currentOperator {
        case "X":
            lastNum *= currentNum
        case "-":
            lastNum -= currentNum
        case "+":
            lastNum += currentNum
        case "/":
            lastNum /= currentNum
        default:
            lastNum = currentNum
        }
        solutionLabel.text = "\(lastNum)"
        currentOperator = sender.titleLabel?.text ?? ""
        currentNum = 0
    }
    
    @IBAction func solvePressed(_ sender: Any) {
        switch currentOperator {
        case "X":
            lastNum *= currentNum
        case "-":
            lastNum -= currentNum
        case "+":
            lastNum += currentNum
        case "/":
            lastNum /= currentNum
        default:
            break
        }
        solutionLabel.text = "\(lastNum)"
        currentNum = 0
        lastNum = 0
        currentOperator = ""
    }
}

