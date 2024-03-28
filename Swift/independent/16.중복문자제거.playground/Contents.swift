import UIKit

func solution(_ str: String) -> String {
    var answer:String = ""
    
    for char in str {
        if !answer.contains(char) {
            answer += String(char)
        }
    }
    
    return answer
}

print(solution("ksekkset"))

