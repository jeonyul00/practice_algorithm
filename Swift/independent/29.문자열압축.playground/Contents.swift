import UIKit

func solution(_ str: String) -> String {
    guard !str.isEmpty else { return "" }

    var count = 1
    var answer = ""
    let characters = Array(str)
    
    for i in 1..<characters.count {
        if characters[i] == characters[i-1] {
            count += 1
        } else {
            answer += "\(characters[i-1])"
            if count > 1 {
                answer += "\(count)"
            }
            count = 1
        }
    }
    
    answer += "\(characters.last!)"
    if count > 1 {
        answer += "\(count)"
    }
    
    return answer
}

print(solution("KKHSSSSSSSE"))
