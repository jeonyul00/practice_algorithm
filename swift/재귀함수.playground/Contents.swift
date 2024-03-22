import UIKit




let maxNumber:Int = 100
var totalNumber:Int = 0

for i in 0...maxNumber {
    totalNumber += i
}

print(totalNumber)

// ---

print(maxNumber * (maxNumber + 1) / 2)

// ---

func solution(maxNumber:Int) -> Int {
    if maxNumber <= 1 {
        return 1
    }
    return maxNumber + solution(maxNumber: maxNumber - 1)
}


print(solution(maxNumber: maxNumber))
