import Foundation

func solution(_ citations: [Int]) -> Int {    
    var answer = 0
    let sortedCitations = citations.sorted(by: >)
    
    for (i, v) in sortedCitations.enumerated() {        
        if v <= i {            
            return i
        }
    }
    answer = sortedCitations.count
    return answer 
}
