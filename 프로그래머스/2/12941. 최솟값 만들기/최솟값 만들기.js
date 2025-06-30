function solution(A,B){
    const arrA = A.sort((a,b) => a - b)
    const arrB = B.sort((a,b) => b - a)
    let answer = 0
    
    for(let i = 0; i < arrA.length; i++) {
        answer += arrA[i] * arrB[i]
    }
    
    return answer;
}