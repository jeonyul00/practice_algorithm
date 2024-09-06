import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
    var ans = 0    
    let ascNumbers =  A.sorted()
    let descNumbers = B.sorted(by: { $0 > $1 })    
    for (i,_) in A.enumerated() {
        ans += ascNumbers[i] * descNumbers[i]
    }
    return ans
}