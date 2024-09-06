import Foundation

func solution(_ s: String) -> String {
    let word:[String] = s.components(separatedBy: " ")
    var answer:String = ""
    for i in word {
        answer += i.prefix(1).uppercased() + i.dropFirst().lowercased() + " "
    }
    return String(answer.dropLast())         
}
