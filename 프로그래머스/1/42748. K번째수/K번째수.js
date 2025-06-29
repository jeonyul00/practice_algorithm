function solution(array, commands) {    
    var answer = [];    
    for(element of commands) {
        const arr = array.slice(element[0] - 1, element[1])
        const sortedArr = arr.sort((a,b) => a - b)        
        answer.push(sortedArr[element[2] - 1])        
    }    
    return answer;
}