func solution(_ s:String) -> String {
    let stringArr = s.components(separatedBy: " ")
    var answerArr: [String] = []

    for i in stringArr {
        var word = ""
        for (j, v) in i.enumerated() {
            word += (j % 2 == 0) ? v.uppercased() : v.lowercased()
        }
        answerArr.append(word)
    }
    
    return answerArr.joined(separator: " ")
}