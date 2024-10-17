import Foundation

func solution(_ array: [Int]) -> [Int] {    
    guard !array.isEmpty else { return [] }  
    
    var max = array[0]
    var answer: (Int, Int) = (max, 0)
    
    for (i, v) in array.enumerated() {
        if v > max {
            max = v
            answer = (v, i)
        }
    }
    
    return [answer.0, answer.1]
}
