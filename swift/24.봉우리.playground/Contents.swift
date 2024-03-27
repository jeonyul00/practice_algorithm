import UIKit

func solution(_ mapCount:Int, _ map:[[Int]]) -> Int {
    var count:Int = 0
    
    for i in 0..<mapCount {
        for j in 0..<mapCount {
            let currentValue = map[i][j]
            var isPeak = true
            let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
            for dir in directions {
                let ni = i + dir.0
                let nj = j + dir.1
                if ni >= 0 && ni < mapCount && nj >= 0 && nj < mapCount {
                    if currentValue <= map[ni][nj] {
                        isPeak = false
                        break
                    }
                }
            }
            if isPeak {
                count += 1
            }
        }
    }
    return count
}

print(solution(5, [
    [5,3,7,2,3],
    [3,7,1,6,1],
    [7,2,5,3,4],
    [4,3,6,4,1],
    [8,7,3,5,2]
]))
