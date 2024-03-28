import UIKit

func solution(_ count:Int, _ scores: Int...) -> [Int] {
    var answer:[Int] = Array(repeating:0, count: count)
    
    for i in 0..<count {
        var rank = 1
        for j in 0..<count {
            if scores[i] < scores[j] {
                rank += 1
            }
        }
        answer[i] = rank
    }
    return answer
}

print(solution(6, 87, 89, 92, 100, 76, 92))
