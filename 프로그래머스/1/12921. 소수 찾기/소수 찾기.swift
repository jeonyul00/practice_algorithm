import Foundation

func solution(_ n: Int) -> Int {
    guard n > 1 else { return 0 }
        
    
    if n == 2 {
        return 1
    }

    var isPrime = Array(repeating: true, count: n + 1)
    isPrime[0] = false 
    isPrime[1] = false
    
    for i in 2...Int(sqrt(Double(n))) {
        if isPrime[i] {
            for multiple in stride(from: i * i, through: n, by: i) {
                isPrime[multiple] = false
            }
        }
    }
        
    let primes = (2...n).filter { isPrime[$0] }
    
    return primes.count
}