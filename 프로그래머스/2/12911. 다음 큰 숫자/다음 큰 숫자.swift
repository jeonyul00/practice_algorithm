import Foundation

func solution(_ n:Int) -> Int {
    let countOnes = n.nonzeroBitCount
    var nextNumber = n + 1

    while nextNumber.nonzeroBitCount != countOnes {
        nextNumber += 1
    }    
    return nextNumber
}