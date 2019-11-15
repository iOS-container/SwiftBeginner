import Foundation


// MARK:- 基本用法
enum Season {
    case spring,summer,autumn,winter
}

let currentSeason : Season = .spring
print(currentSeason)

//Swift中 默认不需要写break(在有代码的情况下)  需要穿透的话fallthrough
switch currentSeason {
    case .spring:
        print("spring")
    case .summer:
        print("summer")
    case .autumn:
        print("autumn")
    case .winter:
        print("winter")
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
    print("all")
}


//switch currentSeason {
//case :
//    <#code#>
//default:
//    <#code#>
//}







