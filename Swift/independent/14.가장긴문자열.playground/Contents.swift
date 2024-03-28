import UIKit

func solution(_ strs: String...) -> String {
    var answer:String = ""
    
    for str in strs {
        if answer.count < str.count {
            answer = str
        }
    }
    
    return answer
    
}

print(solution("teacher", "time" ,"student", "beautiful", "good"))

