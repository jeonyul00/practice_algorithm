import Foundation

func solution(_ n:Int) -> Int {    
    var answer = 0
    var trigger = true
    
    for i in 1..<n {
        if trigger && n % i == 1 {
            answer = i     
            trigger = false
        }                
    }
    return answer
}