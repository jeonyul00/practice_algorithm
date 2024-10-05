import Foundation

func solution(_ my_string:String) -> String {
    let target:Set<String> = ["a", "e", "i", "o", "u"]
    var answer: String = ""
    
    for i in my_string {
        if !target.contains(String(i)) {
            answer += String(i)
        }        
    }
    return answer
}