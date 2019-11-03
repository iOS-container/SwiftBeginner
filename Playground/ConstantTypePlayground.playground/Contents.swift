import UIKit

// MARK:- 基础类型大小

/// 内存布局 大小
print("Int size = \(MemoryLayout<Int>.size)")
print("Int8 size = \(MemoryLayout<Int8>.size)")
print("Int16 size = \(MemoryLayout<Int16>.size)")
print("Int32 size = \(MemoryLayout<Int32>.size)")
print("Int64 size = \(MemoryLayout<Int64>.size)")
print("\n")

print("Float size = \(MemoryLayout<Float>.size)")
print("Float32 size = \(MemoryLayout<Float32>.size)")
print("Float64 size = \(MemoryLayout<Float64>.size)")
print("Float80 size = \(MemoryLayout<Float80>.size)")
print("\n")

print("Double Size = \(MemoryLayout<Double>.size)")
print("\n")

print("String size = \(MemoryLayout<String>.size)")
print("Array size = \(MemoryLayout<Array<Any>>.size)")
print("NSString size = \(MemoryLayout<NSString>.size)")
print("NSArray size = \(MemoryLayout<NSArray>.size)")
print("\n")

print("Dictionary<String, Any>  size = \(MemoryLayout<Dictionary<String, Any>>.size)")
print("Dictionary<Int, Any> size = \(MemoryLayout<Dictionary<Int, Any>>.size)")
print("Dictionary<Float, Any> size = \(MemoryLayout<Dictionary<Float, Any>>.size)")
print("Dictionary<Double, Any> size = \(MemoryLayout<Dictionary<Double, Any>>.size)")
print("Dictionary<NSNumber, Any> size = \(MemoryLayout<Dictionary<NSNumber, Any>>.size)")
print("Dictionary<NSObject, Any> size = \(MemoryLayout<Dictionary<NSObject, Any>>.size)")
print("\n")

///stride
print("Int stride = \(MemoryLayout<Int>.stride)")
print("Int8 stride = \(MemoryLayout<Int8>.stride)")
print("Int16 stride = \(MemoryLayout<Int16>.stride)")
print("Int32 stride = \(MemoryLayout<Int32>.stride)")
print("Int64 stride = \(MemoryLayout<Int64>.stride)")
print("\n")

print("Float stride = \(MemoryLayout<Float>.stride)")
print("Float32 stride = \(MemoryLayout<Float32>.stride)")
print("Float64 stride = \(MemoryLayout<Float64>.stride)")
print("Float80 stride = \(MemoryLayout<Float80>.stride)")
print("\n")

print("Double stride = \(MemoryLayout<Double>.stride)")
print("\n")

print("String stride = \(MemoryLayout<String>.stride)")
print("Array stride = \(MemoryLayout<Array<Any>>.stride)")
print("NSString stride = \(MemoryLayout<NSString>.stride)")
print("NSArray stride = \(MemoryLayout<NSArray>.stride)")
print("\n")

print("Dictionary<String, Any> stride = \(MemoryLayout<Dictionary<String, Any>>.size)")
print("Dictionary<Int, Any> stride = \(MemoryLayout<Dictionary<Int, Any>>.size)")
print("Dictionary<Float, Any> stride = \(MemoryLayout<Dictionary<Float, Any>>.size)")
print("Dictionary<Double, Any> stride = \(MemoryLayout<Dictionary<Double, Any>>.size)")
print("Dictionary<NSNumber, Any> stride = \(MemoryLayout<Dictionary<NSNumber, Any>>.size)")
print("Dictionary<NSObject, Any> stride = \(MemoryLayout<Dictionary<NSObject, Any>>.size)")
print("\n")

///alignment
print("Int alignment = \(MemoryLayout<Int>.alignment)")
print("Int8 alignment = \(MemoryLayout<Int8>.alignment)")
print("Int16 alignment = \(MemoryLayout<Int16>.alignment)")
print("Int32 alignment = \(MemoryLayout<Int32>.alignment)")
print("Int64 alignment = \(MemoryLayout<Int64>.alignment)")
print("\n")

print("Float alignment = \(MemoryLayout<Float>.alignment)")
print("Float32 alignment = \(MemoryLayout<Float32>.alignment)")
print("Float64 alignment = \(MemoryLayout<Float64>.alignment)")
print("Float80 alignment = \(MemoryLayout<Float80>.alignment)")
print("\n")

print("Double alignment = \(MemoryLayout<Double>.alignment)")
print("\n")

print("String alignment = \(MemoryLayout<String>.alignment)")
print("Array alignment = \(MemoryLayout<Array<Any>>.alignment)")
print("NSString alignment = \(MemoryLayout<NSString>.alignment)")
print("NSArray alignment = \(MemoryLayout<NSArray>.alignment)")
print("\n")

print("Dictionary<String, Any> alignment = \(MemoryLayout<Dictionary<String, Any>>.alignment)")
print("Dictionary<Int, Any> alignment = \(MemoryLayout<Dictionary<Int, Any>>.alignment)")
print("Dictionary<Float, Any> alignment = \(MemoryLayout<Dictionary<Float, Any>>.alignment)")
print("Dictionary<Double, Any> alignment = \(MemoryLayout<Dictionary<Double, Any>>.alignment)")
print("Dictionary<NSNumber, Any> alignment = \(MemoryLayout<Dictionary<NSNumber, Any>>.alignment)")
print("Dictionary<NSObject, Any> alignment = \(MemoryLayout<Dictionary<NSObject, Any>>.alignment)")
print("\n")





