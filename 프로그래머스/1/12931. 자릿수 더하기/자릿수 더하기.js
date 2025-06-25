function solution(n) {
    const strNumber = String(n)
    var answer = 0;
    for(let i=0; i < strNumber.length; i++){
        answer += Number(strNumber[i])
    }
    return answer;
}