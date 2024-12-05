import UIKit

func solution(_ count:Int, _ arr: String...) -> String {
    var answer:String = ""
    for i in arr{
        if answer.count < i.count {
            answer = i
        }
    }
    return answer
}

solution(5, "teacher", "time", "student",  "beautiful", "good")
