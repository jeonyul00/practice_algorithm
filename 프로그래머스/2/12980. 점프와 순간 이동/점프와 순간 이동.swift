import Foundation

func solution(_ n:Int) -> Int 
{
    var answer: Int = 0
    var total: Int = n
    
    while total > 0 {
        if total % 2 == 0 {            
            total = total / 2
        } else {            
            total -= 1
            answer += 1
        }
    }    

    return answer
}