import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var stack: [Int] = []
    var answer: Int = 0
    var map:[[Int]] = board
      
    for move in moves {
        let col = move - 1            
        for row in 0..<map.count { 
            if map[row][col] != 0 {        
                var doll = map[row][col]
                map[row][col] = 0                          
                if stack.last == doll {
                    stack.removeLast()
                    answer += 2
                } else {
                    stack.append(doll)
                }
                break        
            }                        
        }
        
    }    
    return answer
}