import Foundation

func solution(_ numbers:[Int]) -> Int {
    let fullSet:Set<Int> = Set(0...9)
    let numbersSet:Set<Int> = Set(numbers)
    let missingNumbers:Set<Int> = fullSet.subtracting(numbersSet)
    var answer:Int = 0
    
    if !missingNumbers.isEmpty {
        for i in missingNumbers {
            answer += i   
        }
        return answer
    }
    return 0
}