import UIKit

func solution(_ str:String) -> String {
    var answer:String = ""
    
    for i in str {
        if i.isUppercase {
            answer += i.lowercased()
        } else {
            answer += i.uppercased()
        }
    }
    return answer
}

solution("StuDY")
