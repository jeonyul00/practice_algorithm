import UIKit

func solution(_ str: String) -> Int {
    var answer:Int = 0
    
    for i in str {
        if i.isUppercase {
            answer += 1
        }
    }
    return answer
}

solution("KoreaTimeGood")
