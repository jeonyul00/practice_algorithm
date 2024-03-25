import UIKit

func solution(_ num:Int) -> Int {
    var answer = 0
    for i in 0...num {
        answer += i
    }
    return answer
}

print(solution(6))
print(solution(10))
