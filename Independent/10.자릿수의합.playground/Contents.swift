import UIKit

func solution(_ nums:Int...) -> Int {
    var max: Int = Int.min
    var answer:Int = 0
    
    for i in nums {
        var sum:Int = 0
        var temp:Int = i
        
        while temp != 0 {
            sum += temp % 10
            temp = temp / 10
        }
        
        if sum > max || (sum == max && i > answer) {
            max = sum
            answer = i
        }
    }
    
    return answer
    
}


let answer = solution(128,460,603,40,521,137,123)
print(answer)
