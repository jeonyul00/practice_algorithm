import Foundation

func solution(_ number:Int, _ n:Int, _ m:Int) -> Int {
    var answer: Int = 0
    
    if number.isMultiple(of: m) && number.isMultiple(of: n) {
        answer = 1
    }
    
    return answer
}