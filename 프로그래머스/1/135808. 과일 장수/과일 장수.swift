import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {    
    let sortedScores = score.sorted(by: >)    
    var totalProfit = 0        
    
    for i in stride(from: m - 1, to: sortedScores.count, by: m) {        
        totalProfit += sortedScores[i] * m
    }
    
    return totalProfit
}
