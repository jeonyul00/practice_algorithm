import UIKit

func solution(_ count: Int, _ map: [[Int]]) -> Int {
    var answer: Int = 0
    var sumX: Int = 0
    var sumY: Int = 0
    var diagonalRightSum:Int = 0
    var diagonalLeftSum:Int = 0
    
    for i in 0..<count {
        sumX = 0
        sumY = 0
        for j in 0..<count {
            sumX += map[i][j]
            sumY += map[j][i]
        }
        answer = max(sumX , sumY, answer)
    }
    
    for i in 0..<count {
        diagonalRightSum += map[i][i]
        diagonalLeftSum +=  map[i][count - i - 1]
    }
    
    answer = max(diagonalRightSum , diagonalLeftSum, answer)
    return answer
}

print(solution(5,[
    [10, 13, 10, 12, 15],
    [12, 39, 30, 23, 11],
    [11, 25, 50, 53, 15],
    [19, 27, 29, 37, 27],
    [19, 13, 30, 13, 19]
]))
