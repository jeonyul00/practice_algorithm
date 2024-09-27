import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var total: Int = budget
    var answer: Int = 0    
    
    let sortArr:[Int] = d.sorted()
    
    for i in sortArr {        
        if total >= i {        
            total -= i    
            answer += 1
        }                
    }    
    return answer
}