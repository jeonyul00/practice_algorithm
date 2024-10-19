import Foundation

func solution(_ my_string:String) -> Int {
    var answer: Int = 0
    
    for i in my_string {
        if Int(String(i)) != nil {
            answer += Int(String(i))!
        }
    }
    
    return answer
}