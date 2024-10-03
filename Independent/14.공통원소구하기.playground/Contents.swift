import UIKit

func mySolution(_ arrA: [Int], _ arrB: [Int]) -> [Int] {
    var answer:Set<Int> = []
        
    let setA: Set<Int> = Set(arrA)
    let setB: Set<Int> = Set(arrB)
    
    answer = setA.intersection(setB)
    
    return Array(answer).sorted()
}

print(mySolution([1,3,5,9,2],[3,2,5,7,8]))

// --- 이것도 투 포인트

func solution(_ arrA: [Int], _ arrB: [Int]) -> [Int] {
    var answer:[Int] = []
    var pointA: Int = 0
    var pointB: Int = 0
    var arrA = arrA.sorted()
    var arrB = arrB.sorted()
    
    while pointA < arrA.count && pointB < arrB.count {
        
        if arrA[pointA] == arrB[pointB] {
            answer.append(arrA[pointA])
            pointA += 1
            pointB += 1
        } else if arrA[pointA] < arrB[pointB] {
            pointA += 1
        } else {
            pointB += 1
        }
    }
    
    return answer
}


print(solution([1,3,5,9,2],[3,2,5,7,8]))

