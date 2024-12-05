import UIKit

func dfs(_ index: Int, _ currentWeight: Int, _ weights: [Int], _ limitWeight: Int, _ maxWeight: inout Int) {
    if currentWeight > limitWeight {
        return
    }
    if index == weights.count {
        maxWeight = max(maxWeight, currentWeight)
    } else {
        // 바둑이를 태우는 경우
        dfs(index + 1, currentWeight + weights[index], weights, limitWeight, &maxWeight)
        // 바둑이를 태우지 않는 경우
        dfs(index + 1, currentWeight, weights, limitWeight, &maxWeight)
    }
}

func solution(_ limit: Int, _ arr: [Int]) -> Int {
    var maxWeight = 0
    dfs(0, 0, arr, limit, &maxWeight)
    return maxWeight
}

print(solution(259, [81, 58, 42, 33, 61]))
