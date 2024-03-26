import UIKit

func solution(_ count: Int, _ numbers:Int... ) -> Array<Int> {
    var answer:[Int] = [numbers[0]]
    
    for i in 1...numbers.count - 1 {
        if numbers[i] > numbers[i - 1] {
            answer.append(numbers[i])
        }
    }
    return answer
}

print(solution(6, 7, 3, 9, 5, 6, 12))
