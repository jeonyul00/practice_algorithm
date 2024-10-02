import Foundation

func isPrime(_ sum: Int)-> Bool {
    if sum < 2 { return false }    
    
    for i in 2...Int(sqrt(Double(sum))) {
        if sum % i == 0 {
            return false
        }
    }    
    
    return true                
}

func solution(_ nums:[Int]) -> Int {
    var answer: Int = 0
    
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count{
                let sum = nums[i] + nums[j] + nums[k]
                if isPrime(sum) {
                    answer += 1
                }

            }
        }        
    }
    
    return answer
}