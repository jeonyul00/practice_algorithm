function mySolution(gate) {
  if (gate[0] === ">") return false;
  const stack = [];
  for (const char of gate) {
    if (char === "<") {
      stack.push(char);
    } else {
      stack.pop();
    }
  }
  return stack.length === 0;
}

console.log(mySolution("<<>>"));
console.log(mySolution("<<>>"));
console.log(mySolution(">><<"));
console.log(mySolution("<<<>"));
console.log(mySolution(">><<"));

// 최적화: 스택 크기만 추적
function solution(gate) {
  let count = 0;
  for (const char of gate) {
    if (char === "<") {
      count++;
    } else {
      if (count === 0) return false;
      count--;
    }
  }
  return count === 0;
}

console.log(solution("<<>>"));
console.log(solution("<<>>"));
console.log(solution(">><<"));
console.log(solution("<<<>"));
console.log(solution(">><<"));
