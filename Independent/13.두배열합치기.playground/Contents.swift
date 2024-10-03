import UIKit

// two points 알고리즘

// O(nlogn)
func badSolution(_ arrA:[Int], _ arrB:[Int]) -> [Int] {
    return (arrA.sorted() + arrB.sorted()).sorted()
}

print(badSolution([1,3,5],[2,3,6,7,9]))


func solution(_ arrA:[Int], _ arrB:[Int]) -> [Int] {
    var pointA:Int = 0
    var pointB:Int = 0
    var answer: [Int] = []
    
    while pointA < arrA.count && pointB < arrB.count {
        if arrA[pointA] <= arrB[pointB] {
            answer.append(arrA[pointA])
            pointA += 1
        } else {
            answer.append(arrB[pointB])
            pointB += 1
        }
    }

    while pointA < arrA.count {
        answer.append(arrA[pointA])
        pointA += 1
    }
    
    while pointB < arrB.count {
        answer.append(arrB[pointB])
        pointB += 1
    }
    return answer
}

print(solution([1,3,5],[2,3,6,7,9]))

/*
 포인터 두개로 가지고 노는거군.
 약간 트리거 쓰는거랑 느낌이 비스무리 하다.
 */
