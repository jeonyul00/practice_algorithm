function solution(n) {
  const answer = Math.sqrt(n);
  return Number.isInteger(answer) ? Math.pow(answer + 1, 2) : -1;
}
