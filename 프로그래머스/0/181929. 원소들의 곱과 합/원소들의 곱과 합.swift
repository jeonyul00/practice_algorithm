import Foundation

func solution(_ num_list:[Int]) -> Int {
    var mul: Int = 1
    var sum: Int = 0
    
    for i in num_list {
        mul *= i
        sum += i
    }
    
    let sumSquared = sum * sum
    
    if mul < sumSquared {
        return 1
    } else {
        return 0
    }
}
