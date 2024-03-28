import UIKit

func solution(_ num: Int, _ num2:Int, _ num3:Int) -> Bool {
    let answer:Bool
    var maxNum:Int
    let sum: Int = num + num2 + num3
    
    if num < num2 {
        maxNum = num2
    } else {
        maxNum = num
    }
    
    if maxNum < num3 {
        maxNum = num3
    }
    
    if sum - maxNum <= maxNum {
        answer = false
    } else {
        answer = true
    }
    
    return answer
                                        
}


print(solution(6,7,11))
print(solution(13,33,11))
