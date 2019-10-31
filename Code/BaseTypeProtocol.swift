//
//  BaseTypeProtocol.swift
//  SwiftClasses
//
//  Created by 袁涛 on 2019/10/28.
//  Copyright © 2019 Y_T. All rights reserved.
//

import Foundation


public protocol BaseTypeProtocol   {
    
    func asInt() -> Int
    func asInt8() -> Int8
    func asInt16() -> Int16
    func asInt32() -> Int32
    func asInt64() -> Int64
    
    func asFloat() -> Float
    func asDouble() -> Double
    
    func asBool() -> Bool
    func asNumber() -> NSNumber
}


extension BaseTypeProtocol {
    public func asInt() -> Int {
        return Int.zero
    }
    
    public func asInt8() -> Int8 {
        return Int8.zero
    }
    
    public func asInt16() -> Int16 {
        return Int16.zero
    }
    
    public func asInt32() -> Int32 {
        return Int32.zero
    }
    
    public func asInt64() -> Int64 {
        return Int64.zero
    }

    public func asFloat() -> Float {
        return Float.zero
    }
    
    public func asDouble() -> Double {
        return Double.zero
    }

    public func asBool() -> Bool {
        return asNumber().boolValue
    }
    
    public func asNumber() -> NSNumber {
        return NSNumber(integerLiteral: 0)
    }
}

public protocol BaseTypeProtocolFormInt : BaseTypeProtocol  {}
public protocol BaseTypeProtocolFormFloat : BaseTypeProtocol  {}
public protocol BaseTypeProtocolFormDouble : BaseTypeProtocol  {}

// MARK:- Int BaseTypeProtocol
extension Int : BaseTypeProtocol {
    
    public typealias Instace = Int
    
    public func asInt8() -> Int8 {
        return asNumber().int8Value
    }
    
    public func asInt16() -> Int16 {
        return asNumber().int16Value
    }
    
    public func asInt32() -> Int32 {
        return asNumber().int32Value
    }
    
    public func asInt64() -> Int64 {
        return asNumber().int64Value
    }
    
    public func asFloat() -> Float {
        return asNumber().floatValue
    }
    
    public func asDouble() -> Double {
        return asNumber().doubleValue
    }
    
    public func asBool() -> Bool {
        return asNumber().boolValue
    }
    
    public func asInt() -> Int {
        return self
    }
    
    public func asNumber() -> NSNumber {
        return NSNumber(integerLiteral: self)
    }
}

extension Optional where Wrapped == Int, Wrapped : BaseTypeProtocol {

    public func asInt() -> Int {
        guard let i = self else {
            return 0
        }

        return i
    }

    public func asInt8() -> Int8 {
        return Int8(asInt())
    }

    public func asInt16() -> Int16 {
        return Int16(asInt())
    }

    public func asInt32() -> Int32 {
        return Int32(asInt())
    }

    public func asInt64() -> Int64 {
        return Int64(asInt())
    }

    public func asFloat() -> Float {
        return Float(asInt())
    }

    public func asDouble() -> Double {
        return Double(asInt())
    }

    public func asBool() -> Bool {
        return asInt() != 0
    }

    public func asNumber() -> NSNumber {
        return NSNumber(integerLiteral: asInt())
    }
}

// MARK:- GET Static
extension Float {
    static var max : Float {
      return Float.greatestFiniteMagnitude
    }

    static var min : Float {
      return Float.leastNormalMagnitude
    }
}

// MARK:- float BaseTypeProtocol
extension Float : BaseTypeProtocol  {
    
    
    public func asFloat() -> Float {
        return self
    }
    
    public func asDouble() -> Double {
        return Double(self)
    }
    
    public func asInt() -> Int {
        let maxValue = Float(Int.max)
        let minValue = Float(Int.min)
        
        if self > maxValue {
            return Int.max
        }
        
        if self < minValue {
           return Int.min
        }
        
        return Int(self)
    }
    
    public func asInt8() -> Int8 {
        let maxValue = Float(Int8.max)
        let minValue = Float(Int8.min)
        
        if self > maxValue {
            return Int8.max
        }
        
        if self < minValue {
           return Int8.min
        }
        
        return Int8(self)
    }
    
    public func asInt16() -> Int16 {
        let maxValue = Float(Int16.max)
        let minValue = Float(Int16.min)

        if self > maxValue {
          return Int16.max
        }

        if self < minValue {
         return Int16.min
        }

        return Int16(self)
    }
    
    public func asInt32() -> Int32 {
        let maxValue = Float(Int32.max)
        let minValue = Float(Int32.min)

        if self > maxValue {
          return Int32.max
        }

        if self < minValue {
         return Int32.min
        }

        return Int32(self)
    }
    
    public func asInt64() -> Int64 {
        let maxValue = Float(Int64.max)
        let minValue = Float(Int64.min)

        if self > maxValue {
            return Int64.max
        }

        if self < minValue {
            return Int64.min
        }

        return Int64(self)
    }
    
    public func asBool() -> Bool {
        return 0 != asInt()
    }
    
    public func asNumber() -> NSNumber {
        return NSNumber(value: self)
    }
    
}

extension Optional where Wrapped == Float, Wrapped : BaseTypeProtocol  {

    public func asFloat() -> Float {
        guard let float = self else {
            return Float.zero
        }
        
        return float
    }
    
    public func asDouble() -> Double {
        return asNumber().doubleValue
    }
    
    public func asInt() -> Int {
        return asNumber().intValue
    }
    
    public func asInt8() -> Int8 {
        return asNumber().int8Value
    }
    
    public func asInt16() -> Int16 {
        return asNumber().int16Value
    }
    
    public func asInt32() -> Int32 {
        return asNumber().int32Value
    }
    
    public func asInt64() -> Int64 {
        return asNumber().int64Value
    }
    
    public func asBool() -> Bool {
        return asNumber().boolValue
    }
    
    public func asNumber() -> NSNumber {
        return NSNumber(value: asFloat())
    }
    
}




