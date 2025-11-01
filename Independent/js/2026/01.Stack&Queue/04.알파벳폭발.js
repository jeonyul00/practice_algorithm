function mySolution(s) {
  if (s.length === 1) return s;
  const stack = [];

  for (const char of s) {
    if (stack[stack.length - 1] === char.toUpperCase()) {
      stack.pop();
    } else {
      stack.push(char.toUpperCase());
    }
  }
  return stack.join("");
}

console.log(mySolution("infFflearn"));
console.log(mySolution("aAbBcC"));
console.log(mySolution("xYyX"));
console.log(mySolution("a"));
console.log(mySolution("Code"));
