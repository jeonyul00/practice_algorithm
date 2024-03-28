func solution(_ n:Int) -> Int {
    var numA = 0
    var numB = 1
    var sum = 0
    
    if n == 0 { return 0 }

    for _ in 1..<n {
        sum = numA + numB % 1234567
        numA = numB % 1234567
        numB = sum % 1234567
    }
    
    return numB
}