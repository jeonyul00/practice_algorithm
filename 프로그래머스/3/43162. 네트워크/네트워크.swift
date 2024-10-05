import Foundation

var visited = [Bool]()
var n = 0

func dfs(_ start: Int, _ computers: [[Int]]) {
    visited[start] = true
    
    for i in 0..<n {        
        if computers[start][i] == 1 && !visited[i] {
            dfs(i, computers)
        }
    }
}

func solution(_ nInput: Int, _ computers: [[Int]]) -> Int {
    n = nInput
    visited = Array(repeating: false, count: n)
    var networkCount = 0    
    for i in 0..<n {
        if !visited[i] {
            dfs(i, computers)
            networkCount += 1
        }
    }
    
    return networkCount
}
