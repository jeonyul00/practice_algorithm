import UIKit

func solution(_ day:Int, _ carNumbers: Int...) -> Int{
    var count:Int = 0
    for i in carNumbers {
        if i % 10 == day {
            count += 1
        }
    }
    return count
}

print(solution(3, 25, 23, 11, 47, 53, 17, 33))
print(solution(0, 12, 20, 54, 30, 87, 91, 30))
