import Foundation

func solution(_ elements: [Int]) -> Int {
    var answer: Set<Int> = []
    let extendedElements = elements + elements

    
    for i in 1...elements.count {
        for j in 0..<elements.count {
            var sum: Int = 0
            for k in j..<j+i {
                sum += extendedElements[k]
            }
            answer.insert(sum)
        }
    }    
    return answer.count
}
