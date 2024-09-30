func solution(_ t: String, _ p: String) -> Int {
    let pValue = Int(p)!
    let tArr = Array(t)
    let lengthP = p.count
    var answer = 0
    
    for i in 0...(tArr.count - lengthP) {
        let subString = String(tArr[i..<i + lengthP])
        if let subValue = Int(subString), subValue <= pValue {
            answer += 1
        }
    }    
    return answer
}
