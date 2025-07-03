function solution(n) {    
    let f0 = 0
    let f1 = 1
    
    for(let i = 2; i <= n; i++) {
        const next = (f0 + f1) % 1234567
        f0 = f1
        f1 = next
    }

    return n === 0 ? 0 : f1
}
