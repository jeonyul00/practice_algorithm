import UIKit

func solution(_ str:String) -> String {
    var answer:String = ""
    
    for i in str {
        if i == "A" {
            answer += "#"
        } else {
            answer += String(i)
        }
    }
    return answer
}

print(solution("BANANA"))
