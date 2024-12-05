import UIKit

func solution(_ num: Int, _ arr: [Int]) -> Int {
    var answer: Int = 0
    var startPoint: Int = 0
    var sum: Int = 0
    
    // endPoint는 배열을 순회하는 포인터
    for endPoint in 0..<arr.count {
        sum += arr[endPoint]
        
        // 구간 합이 num보다 크거나 같으면 startPoint를 이동시킴
        while sum > num {
            sum -= arr[startPoint]
            startPoint += 1
        }
        
        // 구간 합이 num과 같으면 카운트 증가
        if sum == num {
            answer += 1
        }
    }
    
    return answer
}

print(solution(6, [1, 2, 1, 3, 1, 1, 1, 2]))
