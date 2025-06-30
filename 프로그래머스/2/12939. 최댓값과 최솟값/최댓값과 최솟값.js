function solution(s) {
    let max = Number.MIN_SAFE_INTEGER
    let min = Number.MAX_SAFE_INTEGER
    let answer = '';
    const arr = s.split(" ")
    
    for(str of arr) {
        max = Math.max(str, max)
        min = Math.min(str, min)
    }
    
    answer = min + " " + max
    return answer;
}