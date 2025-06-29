// 남은 작업일 계산하고 내 뒤에 있는 애가 나보다 작거나 같으면 같이 배포
// 아니면 나만 배포
// 그리고 나는 배포 됐으니까 "나"는 내 뒤에 있는 애가 되어야지
function solution(progresses, speeds) {
  const days = progresses.map((p, i) => Math.ceil((100 - p) / speeds[i]) );
    console.log(days)
  const answer = [];
  let maxDay = days[0];
  let count = 1;
  
  for (let i = 1; i < days.length; i++) {
    if (days[i] <= maxDay) {
      count++;
    } else {
      answer.push(count);
      count = 1;
      maxDay = days[i];
    }
  }
  answer.push(count);
  return answer;
}
