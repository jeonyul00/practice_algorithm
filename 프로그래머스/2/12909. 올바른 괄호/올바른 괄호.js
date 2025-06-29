function solution(s){    
    const arr = s.split('')
    const stack = []

    for(char of arr) {
        if(stack.length === 0 && char === ')') return false
        if(char === '(') {
            stack.push('(')
        } else {
            stack.pop()
        }
    }

    return stack.length === 0;
}