import Foundation

enum NumberChar: String, CaseIterable {
    case zero = "zero"
    case one = "one"
    case two = "two"
    case three = "three"
    case four = "four"
    case five = "five"
    case six = "six"
    case seven = "seven"
    case eight = "eight"
    case nine = "nine"
    
    var number: Int {
        switch self {
        case .zero: return 0
        case .one: return 1
        case .two: return 2
        case .three: return 3
        case .four: return 4
        case .five: return 5
        case .six: return 6
        case .seven: return 7
        case .eight: return 8
        case .nine: return 9
        }
    }
}

func solution(_ s: String) -> Int {
    var answer: String = ""
    var tempString: String = ""

    for char in s {
        if let num = Int(String(char)) {            
            answer += String(num)
        } else {        
            tempString.append(char)
                        
            for numberChar in NumberChar.allCases {
                if tempString == numberChar.rawValue {
                    answer += String(numberChar.number)
                    tempString = ""
                    break
                }
            }            
        }
    }    
    return Int(answer)!
}