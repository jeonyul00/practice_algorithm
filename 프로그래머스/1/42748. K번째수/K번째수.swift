import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var tempArr:[Int] = []
    var answer:[Int] = []
    
    for i in 0..<commands.count {        
        tempArr = Array(array[commands[i][0] - 1...commands[i][1] - 1]).sorted()
        answer.append(tempArr[commands[i][2] - 1])
    }
    
    return answer
}