import UIKit

func solution(_ count: Int, _ userA: [Int], _ userB:[Int]) -> [String] {
    var answer: [String] = Array(repeating:"", count:count)
    for i in 0...count - 1 {
        if userA[i] == userB[i] {
            answer[i] = "D"
        } else if (userA[i] == 1 && userB[i] == 3) || (userA[i] == 2 && userB[i] == 1) || (userA[i] == 3 && userB[i] == 2) {
            answer[i] = "A"
        } else {
            answer[i] = "B"
        }
    }
    return answer
    
}

print(solution(5, [2,3,3,1,3], [1,1,2,2,3]))
