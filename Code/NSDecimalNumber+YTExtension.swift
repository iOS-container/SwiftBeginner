//
//  NSNumber+YTExtension.swift
//  SwiftClasses
//
//  Created by 袁涛 on 2019/10/30.
//  Copyright © 2019 Y_T. All rights reserved.
//

import Foundation


public protocol accuracy {
    var number : NSDecimalNumber { get }
}

extension Int : accuracy {
    public var number: NSDecimalNumber {
        get {
            return NSDecimalNumber(value: self)
        }
    }
}

extension Float : accuracy {
    public var number: NSDecimalNumber {
        get {
            return NSDecimalNumber(value: self)
        }
    }
}

extension Double : accuracy {
    public var number: NSDecimalNumber {
        get {
            return NSDecimalNumber(value: self)
        }
    }
}

extension NSDecimalNumber : accuracy {
    public var number: NSDecimalNumber {
        get {
            return self
        }
    }
}

extension String : accuracy {
    public var number: NSDecimalNumber {
      get {
        return NSDecimalNumber(pointer: self)
      }
    }
}

extension Optional : accuracy where Wrapped == String {
    public var number: NSDecimalNumber {
      get {
        return NSDecimalNumber(string: self)
      }
    }
}


public extension NSDecimalNumber {

    enum FourArithmeticOperations {
        case adding,subtracting,multiplying,dividing
    }
    
    
    /// <#Description#>
    /// - Parameter mode: 舍入方式
    /// - Parameter scale: 小数点后舍入值的位数
    /// - Parameter exact: 精度错误处理
    /// - Parameter overflow: 溢出错误处理
    /// - Parameter underflow: 下溢错误处理
    /// - Parameter divideByZero: 除以0的错误处理
    /// - Parameter operation: 四则运算
    /// - Parameter facotr1: 计算参数1
    /// - Parameter facotr2: 计算参数2
    class func decimalNumber(_ mode : NSDecimalNumber.RoundingMode = .down,
                             scale : Int16 = 2,
                             exact : Bool = false,
                             overflow : Bool = false,
                             underflow : Bool = false,
                             divideByZero : Bool = true,
                             by operation: NSDecimalNumber.FourArithmeticOperations = .multiplying,
                             facotr1 : accuracy,
                             facotr2 : accuracy) -> String {
        
        let roundPlain = NSDecimalNumberHandler(roundingMode: mode,
                                                scale: scale,
                                                raiseOnExactness: exact,
                                                raiseOnOverflow: overflow,
                                                raiseOnUnderflow: underflow,
                                                raiseOnDivideByZero: divideByZero)
        
        let number1 = facotr1.number
        let number2 = facotr2.number

        var res : NSDecimalNumber
        switch operation {
        case .adding:
            res = number1.adding(number2, withBehavior: roundPlain)
        case .subtracting:
            res = number1.subtracting(number2, withBehavior: roundPlain)
        case .multiplying:
            res = number1.multiplying(by: number2, withBehavior: roundPlain)
        case .dividing:
            res = number1.dividing(by: number2, withBehavior: roundPlain)
        }
        
        return res.stringValue
    }

}


