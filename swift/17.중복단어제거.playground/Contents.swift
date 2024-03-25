import UIKit

func solution(_ count:Int, _ str: String...) -> [String] {
    var answer: [String] = []
    
    for (idx,element) in str.enumerated() {
        if(!answer.contains(element)){
            answer.append(element)
        }
    }    
    return answer
}

print(solution(5, "good", "time", "good", "time", "student"))
