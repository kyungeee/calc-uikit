//
//  CalcInsider.swift
//  calcApp
//
//  Created by 박희경 on 2022/10/14.
//


import Foundation

enum Operator {
    case Add
    case Subtract
    case Multiply
    case Divide
    case Unknown
}

struct CalcInsider {
    // 계산 함수
    mutating func operate(num1: Double, num2: Double, myOperator: Operator) -> String {
        switch myOperator {
        case .Add:
            return "\(num1 + num2)"
        case .Subtract:
            return "\(num1 - num2)"
        case .Multiply:
            return "\(num1 * num2)"
        case .Divide:
            if num2 == 0 {
                return "오류"
            } else {
               return "\(num1 / num2)"
            }
        default: break
        }
        
        return ""
    }
    
    // 계산값이 실수가 아닌경우 정수로 처리해주는 함수
    func removePoint(num: String) -> String {
        
        guard let floatNumString = Double(num) else {
            return ("오류")
        }
        var numString = num
        if floatNumString == floor(floatNumString) {
            for _ in 0..<numString.count {
                if numString.last == "." {
                    numString.removeLast()
                    break
                }
                else {
                    numString.removeLast()
                }
            }
        }
        return numString
    }
}
