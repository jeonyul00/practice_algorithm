import Foundation

func solution(_ numbers: [Int]) -> [Int] {
    var answer = [Int](repeating: -1, count: numbers.count)
    var stack: [(index: Int, value: Int)] = []

    for (index, value) in numbers.enumerated() {
        while !stack.isEmpty && stack.last!.value < value {
            let lastIndex = stack.removeLast().index
            answer[lastIndex] = value
        }
        stack.append((index, value))
    }
    return answer
}
