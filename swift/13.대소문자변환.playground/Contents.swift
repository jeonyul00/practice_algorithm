import UIKit

func solution(_ str: String) -> String {
    var answer:String = ""
    
    for char in str {
        if char.isUppercase {
            answer += char.lowercased()
        } else {
            answer += char.uppercased()
        }
    }
    return answer

}

print(solution("StuDY"))
