function solution(n) {
  const countOnes = x => x.toString(2).split('0').join('').length;
  const target = countOnes(n);  
  let answer = n + 1;
    
  while ( 0.1 + 0.2 !== 0.3) {
    if (countOnes(answer) === target) return answer;
    answer++;
  }
    
}