import UIKit

func solution(_ str: String) -> String {
    var answer = ""
    
    for char in str {
        if char == "A" {
            answer += "#"
        } else {
            answer += String(char)
        }
    }
    return answer
}

print(solution("BANANA"))
