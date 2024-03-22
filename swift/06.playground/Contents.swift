import UIKit

var firstMatrix:[[Int]] = [[1,0,0,0,0],[0,0,1,0,1],[0,0,1,0,1],[0,0,1,0,1],[0,0,1,0,1]]
var secondMatrix:[[Int]] = [[0,0,0,0,1],[0,0,0,0,3],[0,0,0,0,4],[0,2,0,0,2],[4,5,0,2,0]]

func solution(firstMatrix: [[Int]], secondMatrix: [[Int]]) -> String {
    var answer = ""
    var arr = Array(repeating: Array(repeating: 0, count: firstMatrix[0].count), count: firstMatrix.count)
    print(arr)
    
    for i in 0..<secondMatrix.count {
        for j in 0..<secondMatrix[i].count {
            arr[i][j] = secondMatrix[j][secondMatrix[0].count - 1 - i] + firstMatrix[i][j]
        }
    }
    
    for row in arr {
        let binaryString = row.map(String.init).joined()
        if let decimal = Int(binaryString, radix: 8) {
            answer += String(UnicodeScalar(decimal)!)
        }
    }
    
    return answer
}

print(solution(firstMatrix: firstMatrix, secondMatrix: secondMatrix))
