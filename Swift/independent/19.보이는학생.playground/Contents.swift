import UIKit

func solution(_ count:Int, _ students: Int...) -> Int {
    var answer:[Int] = []
    var max = Int.min
    
    for i in students {
        if max < i {
            max = i
            answer.append(i)
        }
    }
    return answer.count
    
}

print(solution(8, 130, 135, 148, 140, 145, 150, 150, 153))
