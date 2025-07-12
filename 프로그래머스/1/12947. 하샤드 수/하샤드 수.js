function solution(x) {
    const answer = String(x).split("")
    let sum = 0
    
    for(num of answer) {
        sum += Number(num)
    }
    return x % sum === 0;
}