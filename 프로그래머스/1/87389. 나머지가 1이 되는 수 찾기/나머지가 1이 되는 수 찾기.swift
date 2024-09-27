import Foundation

func solution(_ n:Int) -> Int {    
    var answer = 1
    var trigger = true
    
    while trigger {
        if n % answer == 1 {
            trigger = false            
        } else {
            answer += 1                    
        }        
    }    
    return answer
}