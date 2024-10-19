import Foundation

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    var answer:[Int] = []
    
    for i in numlist {
        if i.isMultiple(of: n) {
            answer.append(i)
        }                
    }
    return answer
}