func solution(_ n:Int) -> Int {
    if n == 1 || n == 2 {
        return n
    }
    
    var arr = [Int](repeating: 0, count: n+1)
    arr[1] = 1
    arr[2] = 2
    
    for i in 3...n {
        arr[i] = (arr[i-1] + arr[i-2]) % 1234567
    }

    return arr[n]
}