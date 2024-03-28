import UIKit

func solution(_ str:String, _ char:Character) -> [Int] {
    var answer = [Int](repeating:0,count:str.count)
    var distance:Int = 0
    
    for (i, v) in str.enumerated() {
        if v == char {
            distance = 0
        } else {
            distance += 1
        }
        answer[i] = distance
    }
    
    distance = 0
    
    for (i, v) in str.enumerated().reversed() {
        if v == char {
            distance = 0
        } else {
            distance += 1
            answer[i] = min(answer[i], distance)
        }
    }
    
    return answer
    
}

print(solution("teachermode", "e"))
