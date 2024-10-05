import Foundation

func solution(_ numbers:[Int]) -> Double {
    var sum: Double = 0
        
    for i in numbers {
        sum += Double(i)
    }
        
    return sum / Double(numbers.count)
}