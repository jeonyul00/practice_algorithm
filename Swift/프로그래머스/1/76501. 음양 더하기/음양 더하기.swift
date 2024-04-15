import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var answer:Int = 0    
    for (i,v) in signs.enumerated() {
        let sign:String = v ? "+" : "-"
        let strNum:String = sign + String(absolutes[i])
        answer += Int(strNum)!        
    }    
    return answer
}