function solution(s) {
    const answer = s.split(" ");
    let max = Number.MIN_SAFE_INTEGER
    let min = Number.MAX_SAFE_INTEGER
    
    for(let num of answer) {
        min = Math.min(min, num)
        max = Math.max(max, num)
    }
    
    return min + " " + max;
}