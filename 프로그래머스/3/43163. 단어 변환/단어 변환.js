function solution(begin, target, words) {
    var answer = Number.MAX_SAFE_INTEGER;
    const check = Array.from({length: words.length}).fill(false)        
    
    const isCheckWord = (a,b) => {
        let dif = 0
        for(let i = 0; i < a.length; i++) {
            if(a[i] !== b[i]) dif++
        }        
        return dif === 1        
    }        
    
    function DFS(current, count) {
        if(current === target){            
            answer = Math.min(answer, count)
        } else {
            for(let i = 0; i < words.length; i++) {
                if(!check[i] && isCheckWord(current, words[i])){
                    check[i] = true
                    DFS(words[i], count + 1)
                    check[i] = false
                }
            }
        }
    }            
    
    DFS(begin, 0)                    
    
    return answer === Number.MAX_SAFE_INTEGER ? 0 : answer;
}