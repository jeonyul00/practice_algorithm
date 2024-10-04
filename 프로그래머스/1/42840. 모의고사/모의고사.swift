import Foundation

func solution(_ answers: [Int]) -> [Int] {    
    let aCount = [1, 2, 3, 4, 5]
    let bCount = [2, 1, 2, 3, 2, 4, 2, 5]
    let cCount = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var ranks: (Int, Int, Int) = (0, 0, 0)
    var answer: [Int] = []
        
    for i in 0..<answers.count {
        if answers[i] == aCount[i % aCount.count] {
            ranks.0 += 1
        }
        if answers[i] == bCount[i % bCount.count] {
            ranks.1 += 1
        }
        if answers[i] == cCount[i % cCount.count] {
            ranks.2 += 1
        }
    }
        
    let maxScore = max(ranks.0, ranks.1, ranks.2)            
    if ranks.0 == maxScore {
        answer.append(1)
    }
    if ranks.1 == maxScore {
        answer.append(2)
    }
    if ranks.2 == maxScore {
        answer.append(3)
    }

    return answer
}
