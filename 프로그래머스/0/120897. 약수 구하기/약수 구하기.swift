import Foundation

func solution(_ n:Int) -> [Int] {
    var answer: [Int] = []
    
    for i in 1...Int(sqrt(Double(n))) {
        if n % i == 0 {
            answer.append(i)
            if i != n / i {
                answer.append(n / i)
            }
        }
    }
    
    return answer.sorted()
}
