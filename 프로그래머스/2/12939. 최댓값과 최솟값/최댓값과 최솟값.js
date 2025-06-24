function solution(s) {
  const numbers = s.split(' ').map(Number);
  let max = -Infinity;
  let min = Infinity;
  for (let num of numbers) {
    if (num > max) max = num;
    if (num < min) min = num;
  }
  return `${min} ${max}`;
}
