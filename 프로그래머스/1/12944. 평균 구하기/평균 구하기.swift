func solution(_ arr:[Int]) -> Double {
   
    let count = Double(arr.count)
    var sum:Double = 0
    
    for i in arr {
        sum += Double(i)
    }
    
    return sum / count
}