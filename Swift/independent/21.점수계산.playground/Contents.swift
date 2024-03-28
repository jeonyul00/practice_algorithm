import UIKit

func solution(_ count:Int, _ results:Int...) -> Int {
    var score:Int = 1
    var answer:Int = 0
    
    for i in results {
        if i == 1 {
            answer += score
            score = score + 1
        } else {
            score = 1
        }
    }
    
    return answer
}

print(solution(10,1,0,1,1,1,0,0,1,1,0))
