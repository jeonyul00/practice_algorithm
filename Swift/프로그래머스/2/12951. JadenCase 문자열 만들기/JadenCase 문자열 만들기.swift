func solution(_ s: String) -> String {
    let word:[String] = s.components(separatedBy: " ")
    var answer:String = ""
    for (i,v) in word.enumerated() {
        answer += v.prefix(1).uppercased() + v.dropFirst().lowercased() + " "
    }    
    return String(answer.dropLast())
}
