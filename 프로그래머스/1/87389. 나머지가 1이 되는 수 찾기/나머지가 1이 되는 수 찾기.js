function solution(n) {
    let answer = 1;
    while(parseInt( n % answer, 10)!== 1) {
        answer++
    }
    return answer;
}