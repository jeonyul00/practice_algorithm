import UIKit
import Foundation

func solution(_ count: Int) -> Int {
    let answer: Int
    answer = Int(ceil(Double(count) / 12.0))
    return answer
}

solution(178)

