import Foundation

func solution(_ k: Int, _ tangerine: [Int]) -> Int {    
    var sizeCount: [Int: Int] = [:]        
    for size in tangerine {
        sizeCount[size, default: 0] += 1
    }        
    let sortedCounts = sizeCount.values.sorted(by: >)    
    var count = 0
    var total = 0        
    for frequency in sortedCounts {
        total += frequency
        count += 1                
        if total >= k {
            break
        }
    }    
    return count
}
