import Foundation

func solution(_ strlist:[String]) -> [Int] {
    var answer:[Int] = []
    
    for i in strlist {
        answer.append(i.count)
    }
    
    return answer
}