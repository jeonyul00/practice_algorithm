import Foundation

func solution(_ numbers:[Int]) -> Int {
    let sortedNumbers = numbers.sorted()
    let maxProduct = max(sortedNumbers[0] * sortedNumbers[1], sortedNumbers[sortedNumbers.count - 1] * sortedNumbers[sortedNumbers.count - 2])    
    return maxProduct
}
