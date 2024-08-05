import UIKit

func solution(_ str: String, _ char: Character) -> Int {
    var answer:Int = 0
    
    for i in str {
        if i == char {
            answer += 1
        }
    }
    return answer
}

solution("COMPUTERPROGRAMMING", "R")
