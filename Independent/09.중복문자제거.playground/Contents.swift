import UIKit

func solution(_ str:String) -> String {
    var answer:String = ""
    var temp = Set<Character>()
    
    for char in str {
        if !temp.contains(char) {
            answer.append(char)
            temp.insert(char)
        }
    }
    return answer
}

solution("ksekkset")
