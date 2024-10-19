import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var answer:(even: Int, odd: Int) = (0 ,0)
    
    
    for i in num_list {
        if i % 2 == 0 {
            answer.even += 1
        } else {
            answer.odd += 1
        }
    }
    
    return [answer.even, answer.odd]
}