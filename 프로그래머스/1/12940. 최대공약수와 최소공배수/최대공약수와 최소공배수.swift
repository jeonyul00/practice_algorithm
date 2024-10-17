import Foundation

func 약수구하기(_ num: Int) -> [Int] {
    var 약수스: [Int] = []
    for i in 1...num {
        if num % i == 0 {
            약수스.append(i)
        }
    }
    return 약수스
}

func 최대공약수구하기(_ n약수: [Int], _ m약수: [Int]) -> Int {    
    let 공통약수 = n약수.filter { m약수.contains($0) }
    return 공통약수.max() ?? 1
}

func 최소공배수구하기(_ n: Int, _ m: Int, _ 최대공약수: Int) -> Int {
    return (n * m) / 최대공약수
}

func solution(_ n: Int, _ m: Int) -> [Int] {
    let n약수스 = 약수구하기(n)
    let m약수스 = 약수구하기(m)        
    
    let 최대공약수 = 최대공약수구하기(n약수스, m약수스)        
    let 최소공배수 = 최소공배수구하기(n, m, 최대공약수)        
    
    return [최대공약수, 최소공배수]
}