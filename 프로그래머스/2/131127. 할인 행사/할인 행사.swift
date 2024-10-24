import Foundation

func solution(_ want: [String], _ number: [Int], _ discount: [String]) -> Int {
    guard discount.count >= 10 else { return 0 }
    var result = 0
        
    for i in 0...(discount.count - 10) {
        var isPossible = true
        
        for j in 0..<want.count {
            let currentItem = want[j]
            let currentItemCount = number[j]
                        
            let discountSlice = discount[i..<(i+10)]
            if discountSlice.filter({ $0 == currentItem }).count < currentItemCount {
                isPossible = false
                break
            }
        }
        
        if isPossible {
            result += 1
        }
    }
    
    return result
}
