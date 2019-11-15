import UIKit

// MARK:- 基础用法
enum season {
    case spring,summer,autumn,winter
}

let currentSeason : season = .winter

//一般情况先是不需要手写break的 需要穿透的 fallthrough
switch currentSeason {

    case .spring:
        print("spring")
    case .summer:
        print("spring")
    case .autumn:
        print("spring")
    case .winter:
        print("spring")

}

switch currentSeason {
    case .spring: break
    case .summer: break
    case .autumn: break
    case .winter: break
}


switch currentSeason {
    case .spring: fallthrough
    case .summer: fallthrough
    case .autumn: fallthrough
    case .winter:
        print("error Season")
}

print("\n")

// MARK:- 关联值
enum Animal {
    case conventional(Int)
    case unconventional(String)

    mutating func conventionalType() -> String {
        switch self {
        case .conventional(1):
            print("Tiger")
            return "Tiger"
        default:
            print("Unknown Animal")
            return ""
        }
    }

    mutating func rawValue() -> Any {
        switch self {
        case let .conventional(i):
            return i as Any
        case let .unconventional(i):
            return i as Any
        }
    }

}

var animal = Animal.conventional(1)
print(animal)
print(animal.conventionalType())
print(animal.rawValue())

animal = Animal.unconventional("Dinosaur")
print("unconventional = \(animal)")
print("unconventional rawValue = \(animal.rawValue())")

print("\n")

// MARK:- 原始值
enum point : String {
    typealias RawValue = String

    case left   = "左"
    case right  = "右"
    case top    = "上"
    case bottom = "下"
}

print(point.left.rawValue)
print(point.right.rawValue)
print(point.top.rawValue)
print(point.bottom.rawValue)

// MARK:- 隐式原始值
enum timeMode : Int {
    typealias RawValue = Int
    // 12小时 和 24 小时制度
    case TH,TFH
}

print(timeMode.TH)
print(timeMode.TFH)
print("timeMode.TH rawValue = \(timeMode.TH.rawValue)")
print("timeMode.TFH rawValue = \(timeMode.TFH.rawValue)")


indirect enum mathExpor {
    case num(Int)
    case sum(mathExpor,mathExpor)
    case difference(mathExpor,mathExpor)
    
    static func calcute(_ math : mathExpor) -> Int{
        switch math {
        case let .num(i):
            return i
        case let .sum(i, j):
            return mathExpor.calcute(i) + mathExpor.calcute(j)
        case let .difference(i, j):
            return mathExpor.calcute(i) - mathExpor.calcute(j)
        }
    }
}

print("res = \(mathExpor.calcute(.sum(.num(1), .num(2))))")
