function solution(s){
    const arr = s.split("")    
    const stack = []
    
    if (arr[0] === ')') return false
    
    for(let char of arr) {        
        if(char === ')') {
            stack.pop() 
        }
        if(char === '(') {
            stack.push(char)            
        }        
    }    
    return !stack.length
}