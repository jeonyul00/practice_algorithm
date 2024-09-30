import Foundation

func solution(_ s: String) -> [Int] {
    var answer:[Int] = []
    var indexMap = [Character: Int]()

    for (i, char) in s.enumerated() {
        if let lastIndex = indexMap[char] {
            answer.append(i - lastIndex)
        } else {
            answer.append(-1)
        }
        indexMap[char] = i
    }
    
    return answer
}
