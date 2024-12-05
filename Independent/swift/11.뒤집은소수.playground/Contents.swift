import UIKit
import Foundation

// 숫자 뒤집기
func reverseIntInArray(_ nums: [Int]) -> [Int] {
    nums.map { num in
        let reverseString = String(String(num).reversed())
        return Int(reverseString)!
    }
}

// 소수 구하기
func getPrimes(_ nums: [Int]) -> [Int] {
    return nums.filter { num in
        if num < 2 {
            return false
        }
        let upperBound = Int(sqrt(Double(num)))
        if upperBound < 2 {
            return true
        }
        for i in 2...upperBound {
            if num % i == 0 {
                return false
            }
        }
        return true
    }
}

func solution(_ numbers: Int...) -> [Int] {
    var answer: [Int] = reverseIntInArray(numbers)
    answer = getPrimes(answer)
    return answer
}

print(solution(32,55,62,20,250,370,200,30,100))
