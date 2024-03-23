import UIKit

let graph: [Int: Set<Int>] = [
    100: Set([67, 66]),
    67: Set([100, 82, 63]),
    66: Set([100, 73, 69]),
    82: Set([67, 61, 79]),
    63: Set([67]),
    73: Set([66]),
    69: Set([66, 65, 81]),
    61: Set([82]),
    79: Set([82, 87, 77]),
    65: Set([69, 84, 99]),
    81: Set([69]),
    87: Set([79, 31, 78]),
    77: Set([79]),
    84: Set([65]),
    99: Set([65]),
    31: Set([87]),
    78: Set([87])
]

// 검색 알고리즘
// DFS : 깊이 우선 탐색
// BFS : 너비 우선 탐색
func solution(graph: [Int: Set<Int>], start: Int) -> String {
    var answer: [Int] = []
    var stack: [Int] = [start]
    var result = ""
    
    while !stack.isEmpty {
        let nextNode = stack.popLast()!
        if !answer.contains(nextNode) {
            answer.append(nextNode)
            let differenceData = graph[nextNode]!.subtracting(Set(answer))
            if differenceData.isEmpty {
                break
            }
            if let max = differenceData.max() {
                stack.append(max)
            }
        }
    }
    
    for num in answer {
        if let scalar = UnicodeScalar(num) {
            result += String(scalar)
        }
    }
    return result
}

print(solution(graph: graph, start: 100))
