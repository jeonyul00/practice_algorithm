import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {    
    var graph = Array(repeating: [Int](), count: n + 1)    
    for e in edge {
        graph[e[0]].append(e[1])
        graph[e[1]].append(e[0])
    }
    var distances = Array(repeating: -1, count: n + 1)
    distances[1] = 0    
    var queue = [1]    
        while !queue.isEmpty {
        let current = queue.removeFirst()
        for neighbor in graph[current] {
            if distances[neighbor] == -1 {
                distances[neighbor] = distances[current] + 1
                queue.append(neighbor)
            }
        }
    }    
    let maxDistance = distances.max()!        
    return distances.filter { $0 == maxDistance }.count
}