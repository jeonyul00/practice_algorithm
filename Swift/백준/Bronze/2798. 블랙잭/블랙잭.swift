import Foundation

func solution(_ N: Int, _ M: Int, _ cards: [Int]) -> Int {
    var answer = 0
    for i in 0..<N {
        for j in i+1..<N {
            for k in j+1..<N {
                let sum = cards[i] + cards[j] + cards[k]
                if sum <= M && sum > answer {
                    answer = sum
                }
            }
        }
    }
    return answer
}

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0], m = input[1]
let cards = readLine()!.split(separator: " ").map{ Int($0)! }
print(solution(n,m,cards))
