
import UIKit

func solution(_ numbers: Int...) -> [Int] {
    var totalSum = 0
    var answer:[Int] = []
    numbers.forEach { num in totalSum += num }
    
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            if totalSum - (numbers[i] + numbers[j]) == 100 {
                let result = numbers.filter { num in num != numbers[i] && num != numbers[j] }
                answer.append(contentsOf:result)
            }
        }
    }
    return answer
}

print(solution(20,7, 23, 19, 10, 15, 25, 8, 13))
