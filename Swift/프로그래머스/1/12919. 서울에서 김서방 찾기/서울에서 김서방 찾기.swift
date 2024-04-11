func solution(_ seoul:[String]) -> String {
    var number: Int = 0
    
    for (i,v) in seoul.enumerated() {
        if v == "Kim" {
            number = i
        }
    }
    
    return "김서방은 \(number)에 있다"
}