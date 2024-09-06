func solution(_ n:Int) -> String {
    var answer:String = "수"    
    for i in 1..<n {
        if i % 2 == 0 {
            answer += "수"
        } else {
            answer += "박"
        }
    }
    return answer
}