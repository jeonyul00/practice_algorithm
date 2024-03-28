import UIKit

func solution(_ num: Int, _ num2:Int, _ num3:Int) -> Int {
    var answer = 0
    
    if num < num2 {
        answer = num
    } else {
        answer = num2
    }
    
    if answer > num3 {
        answer = num3
    }
    
    return answer
    
}


print(solution(2, 5, 1))
