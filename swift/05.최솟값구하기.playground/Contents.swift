import UIKit

func solution(_ arr:[Int]) -> Int {
    let answer:Int
    var min = Int.max
    
    for i in arr {
        if min > i {
            min = i
        }
    }
    answer = min
    return answer
}

print(solution([5,3,7,11,2,15,17]))
