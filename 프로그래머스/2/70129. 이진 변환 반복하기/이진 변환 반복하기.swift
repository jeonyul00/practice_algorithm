import Foundation

func solution(_ s: String) -> [Int] {
    var currentString = s
    var zeroCount = 0
    var transformCount = 0
    
    while currentString != "1" {        
        let removedZeroCount = currentString.filter { $0 == "0" }.count
        zeroCount += removedZeroCount                
        let length = currentString.count - removedZeroCount                
        currentString = String(length, radix: 2)        
        transformCount += 1
    }        
    return [transformCount, zeroCount]
}
