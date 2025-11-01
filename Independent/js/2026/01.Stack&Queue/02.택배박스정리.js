/* 
    O(n²) - answer.includes(element)가 매 반복마다 배열 전체를 순회
    배열 크기가 커질수록 성능이 급격히 저하됨
*/
function mySolution(box) {
  if (!box.length) return;
  const answer = [];
  for (const element of box) {
    if (!answer.includes(element)) {
      answer.push(element);
    }
  }
  return answer;
}

console.log(mySolution([2, 2, 5, 5, 5, 1, 1]));
console.log(mySolution([7, 7, 8, 8, 0, 0, 0]));

// ---

// stack 활용해서 풀기
// 문제 좀 잘 읽기 => "연.속.된"

/* 
    O(n) - answer[answer.length - 1]는 O(1) 연산
    배열 크기와 비례하여 선형적으로 실행 시간 증가
*/
function solution(box) {
  if (!box.length) return;
  const answer = [];
  for (const element of box) {
    if (answer[answer.length - 1] !== element) {
      answer.push(element);
    }
  }
  return answer;
}

console.log(solution([2, 2, 5, 5, 5, 1, 1]));
console.log(solution([7, 7, 8, 8, 0, 0, 0]));
