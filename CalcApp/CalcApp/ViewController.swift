//
//  ViewController.swift
//  calcApp
//
//  Created by 박희경 on 2022/10/14.
//

import UIKit
import AVFoundation

// vc
class ViewController: UIViewController {
    
    // Property
    @IBOutlet weak var displayNumberLabel: UILabel!
    
    var input: String = ""
    var num1: Double = 0.0
    var num2: Double = 0.0
    
    var calcInsider: CalcInsider = CalcInsider()
    var curOperator: Operator = .Unknown

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionCalcBtn(_ sender: UIButton) {
        guard let myOperator = sender.titleLabel?.text else { return }
        
        switch myOperator {
        case "+":
            curOperator = .Add
        case "-":
            curOperator = .Subtract
        case "x":
            curOperator = .Multiply
        case "/":
            curOperator = .Divide
        default:
            curOperator = .Unknown
        }

        num1 = Double(displayNumberLabel.text!)!
        input = "" // input 초기화
        displayNumberLabel.text = "" // label 초기화
        
    }
    
    @IBAction func resultBtn(_ sender: Any) {
        num2 = Double(displayNumberLabel.text!)!
        
        var result = calcInsider.operate(num1: num1, num2: num2, myOperator: curOperator)
        result = calcInsider.removePoint(num: result)
        displayNumberLabel.text = result
        input = ""
        
    }
    
    @IBAction func pressNumBtn(_ sender: UIButton) {
        guard let pressedNumber = sender.titleLabel?.text else {
            return
        }
        input += pressedNumber
        displayNumberLabel.text = input
    }
    
    @IBAction func cancelNumBtn(_ sender: UIButton) {
        if !input.isEmpty {
            input.removeLast() // 문장열의 가장 마지막 값 제거
            displayNumberLabel.text = input
        }
    }
}
