import Foundation

func dfs(_ numbers: [Int], _ target: Int, _ index: Int, _ currentSum: Int) -> Int {
    if index == numbers.count {
        return currentSum == target ? 1 : 0
    }    
    var add = dfs(numbers, target, index + 1, currentSum + numbers[index])
    var sub = dfs (numbers, target, index + 1, currentSum - numbers[index])    
    return add + sub
    
}

func solution(_ numbers:[Int], _ target:Int) -> Int {    
    let answer:Int = dfs(numbers, target, 0 , 0)
    return answer    
}

