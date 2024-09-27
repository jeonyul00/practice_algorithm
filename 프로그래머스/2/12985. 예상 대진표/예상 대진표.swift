import Foundation

func solution(_ n: Int, _ a: Int, _ b: Int) -> Int {
    var answer = 0
    var me = a
    var you = b
        
    while me != you {        
        me = (me + 1) / 2
        you = (you + 1) / 2
        answer += 1
    }
    
    return answer
}
