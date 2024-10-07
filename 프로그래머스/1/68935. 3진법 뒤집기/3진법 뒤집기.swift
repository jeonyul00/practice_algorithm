import Foundation


func transform(_ num: Int) -> String {
    guard num > 0 else { return ""}    
    let answer = transform(num / 3) + String(num % 3)
    return answer        
}

func solution(_ n:Int) -> Int {
    guard n > 0 else { return 0 }        
    let threeCode = String(transform(n).reversed())            
    return Int(threeCode, radix: 3)!
}