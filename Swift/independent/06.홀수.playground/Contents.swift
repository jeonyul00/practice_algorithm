import UIKit

func solution(_ num:Int... ) -> [String:Int]{
    var sum:Int = 0
    var min = Int.max
    
    for i in num {
        if i % 2 == 1 {
            sum += i
            if min > i {
                min = i
            }
        }
    }
    return ["sum": sum,"min": min]
    
}

print(solution(12,77,38,41,53,92,85))
