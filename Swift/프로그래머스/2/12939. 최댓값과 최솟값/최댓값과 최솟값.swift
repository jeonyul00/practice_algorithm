func solution(_ s:String) -> String {
    
    let numbers = s.split(separator: " ").map { Int($0)! }
    
    let minNumber = numbers.min()!
    let maxNumber = numbers.max()!
    
    return "\(minNumber) \(maxNumber)"
}
