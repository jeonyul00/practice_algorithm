func solution(_ arr:[Int]) -> [Int] {
    guard arr.count > 1 else { return [-1] } 
    var answer = arr
    if let minElement = answer.min() {
        answer.removeAll(where: { $0 == minElement })
    }
    return answer
}