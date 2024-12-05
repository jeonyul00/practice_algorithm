function solution(s){
  const [splitString] = [s.toLowerCase().split("")];
  const conuntP = splitString.filter((v) => v === "p");
  const conuntY = splitString.filter((v) => v === "y");
  return conuntP.length === conuntY.length;
}