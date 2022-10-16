//
//  Calc.swift
//  calcApp
//
//  Created by 박희경 on 2022/10/14.
//

//
//  ViewController.swift
//  Calc
//
//  Created by geonhyeong on 2022/10/13.
//

//import UIKit
//
//class ViewController1: UIViewController {
//
//    // Property
//    @IBOutlet weak var displayNumber: UILabel!
//    var input: String = ""
//    var num1: Int = 0
//    var num2: Int = 0
//    var calcInsider: CalcInsider = CalcInsider()
//    var curOperator: Operator = .Unknown
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//    @IBAction func actionCalcBtn(_ sender: UIButton) {
//        guard let myOperator = sender.titleLabel?.text else { return }
//
//        switch myOperator {
//        case "+":
//            curOperator = .Add
//        case "-":
//            curOperator = .Subtract
//        case "X":
//            curOperator = .Multiply
//        case "%":
//            curOperator = .Divide
//        default:
//            curOperator = .Unknown
//        }
//
//        num1 = Int(displayNumber.text!)!
//        input = ""
//        displayNumber.text = ""
//    }
//
//    // = button을 눌렀을때
//    @IBAction func resultBtn(_ sender: Any) {
//        num2 = Int(displayNumber.text!) ?? 0
//        let result = calcInsider.operate(num1: num1, num2: num2, myOperator: curOperator)
//        displayNumber.text = result
//        input = ""
//    }
//
//    // 숫자 버튼을 눌렀을때
//    @IBAction func pressNumBtn(_ sender: UIButton) {
//        guard let numberValue = sender.titleLabel?.text else { return }
//        input += numberValue
//        displayNumber.text = input
//    }
//
//    // 숫자 한개씩 제거
//    @IBAction func cancelNum(_ sender: UIButton) {
//        if !input.isEmpty { // 값이 비어있는지 확인
//            input.removeLast() // 문자열의 가장 마지막 제거
//            displayNumber.text = input
//        }
//    }
//}
